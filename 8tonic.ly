\version "2.22.2"
\header {
  title = "8 Tonic Patterns"
  composer = "David Valdez"
}

#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eqv? n 6) (eqv? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eqv? n 0) (eqv? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map naturalize es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (naturalize e)))
     (if (ly:pitch? p)
         (begin
           (set! p (naturalize-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

naturalizeMusic =
#(define-music-function (m)
   (ly:music?)
   (naturalize m))

majorTriad = \relative { \tuplet 3/2 { b 8 dis fis } }

minorSecondApart = {
  \majorTriad 
  \transpose c des{
    \majorTriad
  }
}

majorSecondApart = {
  \majorTriad 
  \transpose c d{
    \majorTriad
  }
}

tritoneApart = {
  \majorTriad 
  \transpose c fis{
    \majorTriad
  }
}

triadPairsMinorSecond = {
  \transpose c c    { \minorSecondApart }
  \transpose c es   { \minorSecondApart }
  \transpose c ges  { \minorSecondApart }
  \transpose c a    { \minorSecondApart }
}

triadPairsMajorSecond = {
  \transpose c c    { \majorSecondApart }
  \transpose c es   { \majorSecondApart }
  \transpose c ges  { \majorSecondApart }
  \transpose c a    { \majorSecondApart }
}

triadPairsTritone = {
  \transpose c c    { \tritoneApart }
  \transpose c es   { \tritoneApart }
  \transpose c ges  { \tritoneApart }
  \transpose c a    { \tritoneApart }
}

\new Staff {
  \naturalizeMusic \transpose b b    { \triadPairsMinorSecond } \break
  \naturalizeMusic \transpose b b    { \triadPairsMajorSecond } \break
  \naturalizeMusic \transpose b b    { \triadPairsTritone }     \break
  }

\new Staff {
  \naturalizeMusic \transpose b c'   { \triadPairsMinorSecond } \break
  \naturalizeMusic \transpose b c'   { \triadPairsMajorSecond } \break
  \naturalizeMusic \transpose b c'    { \triadPairsTritone }     \break
}

\new Staff {
  \naturalizeMusic \transpose b cis' { \triadPairsMinorSecond } \break
  \naturalizeMusic \transpose b cis' { \triadPairsMajorSecond } \break
  \naturalizeMusic \transpose b cis'    { \triadPairsTritone }     \break
}

\layout{}
\midi{}
