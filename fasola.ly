\include "shapenote-common.ly"

pitchnames = \fourShapePitchNames
ut = c
#(ly:parser-set-note-names parser fourShapePitchNames)

set-fa = #(define-music-function (parser location k) 
  (ly:pitch?)
  (set! ut k)
  #{ \key $k \major #} )

fasola = 
#(define-music-function (parser location n m) 
  (ly:pitch? ly:music?)
  #{\key $ut \major
    \set Staff.autoAccidentals = \default-accidental-rule
    \transpose do $ut { \relative $n { $m } } #} )

fasola-modal =
#(define-music-function (parser location n m) 
  (ly:pitch? ly:music?)
  #{\key $ut \major
    \set Staff.autoAccidentals = \hide-altered-sixth-accidental-rule
    \modalize-music { \transpose do $ut { \relative $n { $m } } } #} )

