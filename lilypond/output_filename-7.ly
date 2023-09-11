% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 8"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { d' 8 es f e es 2 }
\include "transpose_in_minor_thirds.ly"
\include "staff.ly"

descending_pattern = \relative { d' 8 es f e es 2 }
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
