\version "2.22.2"
\header {
  title = "8 Tonic Patterns"
  composer = "Troels Busk-Jepsen - based on the ideas of David Valdez"
}

\include "scheme/naturalize.ly"


% Triad Triplets
heading = \markup {
  "Triad Triplets."
}
patternA = \relative { \tuplet 3/2 { c 8 e g } }
patternB = \relative { \tuplet 3/2 { g 8 e c } }
\include "build_the_set_variables.ly"
\include "output_to_staffs.ly"

% % Four-note triads up/down
heading = \markup {
  "Four-note triads up/downTriplets"
}
patternA = \relative { c 16 e g c}
patternB = \relative { c' 16 g e c}
\include "build_the_set_variables.ly"
\include "output_to_staffs.ly"

% % Major Pentatonics
heading = \markup {
  "Major Pentatonics."
}
patternA = \relative { c 32 d e g a g e d}
patternB = \relative { c 32 d e g a g e 16}
\include "build_the_set_variables.ly"
\include "output_to_staffs.ly"

% % Minor Pentatonics
heading = \markup {
  "Minor Pentatonics."
}
patternA = \relative { a 32 c d e g e d c}
patternB = \relative { a 32 c d e g e d 16}
\include "build_the_set_variables.ly"
\include "output_to_staffs.ly"


\layout{}
\midi{}
