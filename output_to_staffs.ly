% SET #1 "B" Starting note

<<
\new ChordNames \bSetChordsMin 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b b    { \allPairsMinorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsMaj 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b b    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsTrit 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b b'    { \allPairsTritoneApart }     \break
}
>>

% SET #2 "C"    Starting note

<<
\new ChordNames \cSetChordsMin 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b c'   { \allPairsMinorSecondApart } \break
}
>>

<<
\new ChordNames \cSetChordsMaj 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b c'    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \cSetChordsTrit 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b c''    { \allPairsTritoneApart }     \break
}
>>

% SET #3 "C#"   Starting note

<<
\new ChordNames \cisSetChordsMin 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b cis'    { \allPairsMinorSecondApart } \break
}   
>>

<<
\new ChordNames \cisSetChordsMaj 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b cis'    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \cisSetChordsTrit 
\new Staff {
    \accidentalStyle neo-modern
    \naturalizeMusic \transpose b cis''    { \allPairsTritoneApart }     \break
}
>>
