% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 6"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { c' 8 es g bes a g f e }
\include "transpose_in_minor_thirds.ly"

descending_pattern = \relative { es 8 ges as g ges f es des }
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
