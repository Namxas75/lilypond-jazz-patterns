% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 5"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 f 8 a c 4 d 8 b g 4 as 8 f des 4 }
\include "transpose_in_minor_thirds.ly"

descending_pattern = \relative { des 8 f as 4 g 8 b d 4 c 8 a f 4 fis 8 dis b 4 }
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
