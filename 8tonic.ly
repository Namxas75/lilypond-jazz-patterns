

\version "2.22.2"
\header {
  title = "8 Tonic Patterns"
  composer = "David Valdez"
}

\include "scheme/naturalize.ly"

melodicFragment = \relative { \tuplet 3/2 { b 8 dis fis } }

pairMinorSecondApart = {
  \melodicFragment 
  \transpose c des{
    \melodicFragment
  }
}

pairMajorSecondApart = {
  \melodicFragment 
  \transpose c d{
    \melodicFragment
  }
}

pairTritoneApart = {
  \melodicFragment 
  \transpose c fis{
    \melodicFragment
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
  \naturalizeMusic \transpose b b    { \allPairsMinorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsMaj 
\new Staff {
  \naturalizeMusic \transpose b b    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsTrit 
\new Staff {
  \naturalizeMusic \transpose b b'    { \allPairsTritoneApart }     \break
}
>>

% <<
% \new Staff {
%   \naturalizeMusic \transpose b c' { \allPairsMinorSecondApart  } \break
%   \naturalizeMusic \transpose b c' { \allPairsMajorSecondApart  } \break
%   \naturalizeMusic \transpose b c' { \allPairsTritoneApart      } \break
% }
% >>

\layout{}
\midi{}
