% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns - page 1"

  subtitle = "Based on a concept by David Valdez"
  composer = "Troels Busk-Jepsen"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 g 8 e c 4 }
\include "create_notated_line.ly"

pattern = \transpose b c' \pattern
\include "create_notated_line.ly"

pattern = \transpose c des \pattern
\include "create_notated_line.ly"

\layout {
}
\midi{}
