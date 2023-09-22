% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 7"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { c' 16 d es e f e es d c 2 }
\include "transpose_in_minor_thirds.ly"

descending_pattern = \relative { c 16 d es e f e es d c 2 }
\include "transpose_down_in_minor_thirds.ly"

pattern = \transpose b c' \pattern
\include "transpose_in_minor_thirds.ly"

descending_pattern = \transpose b c' \descending_pattern
\include "transpose_down_in_minor_thirds.ly"

pattern = \transpose c des \pattern
\include "transpose_in_minor_thirds.ly"

descending_pattern = \transpose c des \descending_pattern
\include "transpose_down_in_minor_thirds.ly"

\layout {
}
\midi{}
