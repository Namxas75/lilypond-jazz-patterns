% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 3"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 g 8 c e 4 }
\include "transpose_in_minor_thirds.ly"
\include "staff.ly"

descending_pattern = \relative { e' 8 c g 4 fis 8 dis b 4 }
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
