\header {
  \version "2.24.2"
  title = "8 Tonic Patterns"
  composer = "Troels Busk-Jepsen - based on the ideas of David Valdez"
}

\include "scheme/naturalize.ly"

pattern = \relative { b 8 dis fis 4 g 8 e c 4 }
\include "create_notated_line.ly"

pattern = \relative { c' 8 e g 4 as 8 f des 4 }
\include "create_notated_line.ly"

\layout {
}
\midi{}
