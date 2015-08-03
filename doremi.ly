\include "shapenote-common.ly"

pitchnames = \sevenShapePitchNames
ut = c
#(ly:parser-set-note-names parser sevenShapePitchNames)

\layout { \context { \Staff { \aikenHeads }}}

set-do = #(define-music-function (parser location k) 
  (ly:pitch?)
  (set! ut k)
  #{ \key $k \major #} )

doremi = 
#(define-music-function (parser location n m) 
  (ly:pitch? ly:music?)
  #{\key $ut \major
    \set Staff.autoAccidentals = \default-accidental-rule
    \transpose do $ut { \relative $n { $m } } #} )

doremi-modal =
#(define-music-function (parser location n m) 
  (ly:pitch? ly:music?)
  #{\key $ut \major
    \set Staff.autoAccidentals = \hide-altered-sixth-accidental-rule
    \modalize-music { \transpose do $ut { \relative $n { $m } } } #} )

