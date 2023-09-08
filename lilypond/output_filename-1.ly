% template.erb
\header {
  \version "2.24.2"
  title = "8 Tonic Patterns"
  composer = "Troels Busk-Jepsen - based on the ideas of David Valdez"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 as 8 f des 4 }
\include "create_notated_line.ly"

pattern = \transpose b c' \pattern
\include "create_notated_line.ly"

pattern = \transpose c des \pattern
\include "create_notated_line.ly"

\layout {
}
\midi{}
