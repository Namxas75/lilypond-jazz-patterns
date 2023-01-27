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
    \patternA
  }
}

allPairsMinorSecondApart = {
  \transpose c c    { \pairMinorSecondApart } \bar "'"
  \transpose c es   { \pairMinorSecondApart } \bar "'"
  \transpose c ges  { \pairMinorSecondApart } \bar "'"
  \transpose c a    { \pairMinorSecondApart } \bar "'"
}

allPairsMajorSecondApart = {
  \transpose c cis    { \pairMajorSecondApart } \bar "'"
  \transpose c e      { \pairMajorSecondApart } \bar "'"
  \transpose c g      { \pairMajorSecondApart } \bar "'"
  \transpose c bes    { \pairMajorSecondApart } \bar "'"
}

allPairsTritoneApart = {
  \transpose b c    { \pairTritoneApart } \bar "'"
  \transpose b d    { \pairTritoneApart } \bar "'"
  \transpose b es   { \pairTritoneApart } \bar "'"
  \transpose b f    { \pairTritoneApart } \bar "'"
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
