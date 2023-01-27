% SET #1 "B" Starting note

<<
\new ChordNames \bSetChordsMin 
\new Staff {
    \include "style_staff.ly"
    \transpose b b    { \allPairsMinorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsMaj 
\new Staff {
    \include "style_staff.ly"
    \transpose b b    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \bSetChordsTrit 
\new Staff {
    \include "style_staff.ly"
    \transpose b b'    { \allPairsTritoneApart }     \break
}
>>

% SET #2 "C"    Starting note

<<
\new ChordNames \cSetChordsMin 
\new Staff {
    \include "style_staff.ly"
    \transpose b c'   { \allPairsMinorSecondApart } \break
}
>>

<<
\new ChordNames \cSetChordsMaj 
\new Staff {
    \include "style_staff.ly"
    \transpose b c'    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \cSetChordsTrit 
\new Staff {
    \include "style_staff.ly"
    \transpose b c''    { \allPairsTritoneApart }     \break
}
>>

% SET #3 "C#"   Starting note

<<
\new ChordNames \cisSetChordsMin 
\new Staff {
    \include "style_staff.ly"
    \transpose b cis'    { \allPairsMinorSecondApart } \break
}   
>>

<<
\new ChordNames \cisSetChordsMaj 
\new Staff {
    \include "style_staff.ly"
    \transpose b cis'    { \allPairsMajorSecondApart } \break
}
>>

<<
\new ChordNames \cisSetChordsTrit 
\new Staff {
    \include "style_staff.ly"
    \transpose b cis''    { \allPairsTritoneApart }     \break
}
>>
