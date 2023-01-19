

\version "2.22.2"
\header {
  title = "8 Tonic Patterns"
  composer = "David Valdez"
}

\include "scheme/naturalize.ly"

patternA = \relative { \tuplet 3/2 { c 8 e g } }
patternB = \relative { \tuplet 3/2 { g 8 e c } }

pairMinorSecondApart = {
  \transpose c b{
    \patternA
  }
  \transpose c c'{
    \patternB
  }
}

pairMajorSecondApart = {
  \transpose c b{
    \patternA
  }
  \transpose c cis'{
    \patternB
  }
}

pairTritoneApart = {
  \transpose c b{
    \patternA
  }
  \transpose c eis'{
    \patternB
  }
}

allPairsMinorSecondApart = {
  \transpose c c    { \pairMinorSecondApart }
  \transpose c es   { \pairMinorSecondApart }
  \transpose c ges  { \pairMinorSecondApart }
  \transpose c a    { \pairMinorSecondApart }
}

allPairsMajorSecondApart = {
  \transpose c cis    { \pairMajorSecondApart }
  \transpose c e      { \pairMajorSecondApart }
  \transpose c g      { \pairMajorSecondApart }
  \transpose c bes    { \pairMajorSecondApart }
}

allPairsTritoneApart = {
  \transpose b c    { \pairTritoneApart }
  \transpose b d    { \pairTritoneApart }
  \transpose b es   { \pairTritoneApart }
  \transpose b f    { \pairTritoneApart }
}

bSetChordsMin = \chords {
  b2/c d2/es f2/ges as2/a
}

bSetChordsMaj = \chords {
  c2/d dis2/f fis2/gis a2/b
}

bSetChordsTrit = \chords {
  c2/fis d2/gis es2/a f2/b
}

cSetChordsMin = \chords {
  c2/cis es2/e fis2/g a2/bes
}
cSetChordsMaj = \chords {
  cis2/dis e2/fis g2/a bes2/c
}
cSetChordsTrit = \chords {
  cis2/g dis2/a e2/bes fis2/c
}

cisSetChordsMin = \chords {
  cis2/d e2/f g2/as bes2/b
}
cisSetChordsMaj = \chords {
  d2/e f2/g as2/bes b2/des
}
cisSetChordsTrit = \chords {
  d2/as e2/bes f2/b g2/des
}

\include "output_to_staffs.ly"


\layout{}
\midi{}
