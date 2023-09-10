% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 1"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4 }
\include "transpose_in_minor_thirds.ly"
\include "staff.ly"

descending_pattern = \relative { b, 8 dis fis 4 f 8 a c 4 bes 8 g es 4 e 8 cis a 4 }
\include "transpose_down_in_minor_thirds.ly"
\include "staff.ly"

pattern = \transpose b c' \pattern
\include "transpose_in_minor_thirds.ly"
\include "staff.ly"

descending_pattern = \transpose b c' \descending_pattern
\include "transpose_down_in_minor_thirds.ly"
\include "staff.ly"

pattern = \transpose c des \pattern
\include "transpose_in_minor_thirds.ly"
\include "staff.ly"

descending_pattern = \transpose c des \descending_pattern
\include "transpose_down_in_minor_thirds.ly"
\include "staff.ly"

\layout {
}
\midi{}
