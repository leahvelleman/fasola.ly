# fasola.ly and doremi.ly

`fasola.ly` allows you to enter notes in Lilypond using the four syllables used
by Sacred Harp singers. `doremi.ly` uses the seven syllables used in the
Christian Harmony, Harp of Ages, etc.

```
\include "fasola.ly"
\set-fa g
\fasola g' { Fa So La fa so si la mi Fa }
```

```
\include "doremi.ly"
\set-do g
\doremi g' { do re mi fa so si la ti do }
```

Seven-syllable note entry *looks* a lot like Lilypond's default note
names. But there is an important difference. In Lilypond's normal behavior,
"do" is always C. But for seven-shape singers, the position of "do" depends
on the key signature: it is the tonic in a major key, or the third degree
in a minor key.

## Installation

Download the files `doremi.ly`, `fasola.ly` and `shapenote-common.ly`, and 
put them someplace where Lilypond can see them.

## Usage

### Four-shape

* At the beginning of your score, `\include "fasola.ly"`.

* Where you would ordinarily use the `\key` command to set the key signature
  for a part, instead use `\set-fa`. For a piece in C Major, you would use
  `\set-fa c`. For a piece in G minor, you would use `\set-fa bf`.

* Where you would ordinarily use the `\relative` environment, instead use
  `\fasola`. It has the same syntax as `\relative`, but it takes care of
  transposition so that `Fa` falls on the correct note.

Note that there are two *fa*s, two *so*s and two *la*s in an octave.
`fasola.ly` uses capitalization to distinguish between them. Thus, a major
scale is `Fa So La fa so la mi Fa`.
