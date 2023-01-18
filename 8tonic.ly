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
  \transpose c cis    { \majorSecondApart }
  \transpose c e  { \majorSecondApart }
  \transpose c g  { \majorSecondApart }
  \transpose c bes    { \majorSecondApart }
}

triadPairsTritone = {
  \transpose c c    { \tritoneApart }
  \transpose c d   { \tritoneApart }
  \transpose c es  { \tritoneApart }
  \transpose c f    { \tritoneApart }
}

bSetChordsMin = \chords {
  b2/c d2/es f2/fis as2/a
}

bSetChordsMaj = \chords {
  c2/d es2/f fis2/gis a2/b
}

bSetChordsTrit = \chords {
  c2/fis d2/as es2/a f2/a
}
cSetChordsMin = \chords {
  c2/cis es2/e fis2/g a2/bes
}

cisSetChordsMin = \chords {
  cis2/d e2/f g2/as bes2/b
}

<<
\new ChordNames \bSetChordsMin 
\new Staff {
  \naturalizeMusic \transpose b b    { \triadPairsMinorSecond } \break
}
>>

<<
\new ChordNames \bSetChordsMaj 
\new Staff {
  \naturalizeMusic \transpose b b    { \triadPairsMajorSecond } \break
}
>>

<<
\new ChordNames \bSetChordsTrit 
\new Staff {
  \naturalizeMusic \transpose b c'    { \triadPairsTritone }     \break
}
>>

<<
\new Staff {
  \naturalizeMusic \transpose b cis' { \triadPairsMinorSecond } \break
  \naturalizeMusic \transpose b cis' { \triadPairsMajorSecond } \break
  \naturalizeMusic \transpose b cis'    { \triadPairsTritone }     \break
}
>>

\layout{}
\midi{}
