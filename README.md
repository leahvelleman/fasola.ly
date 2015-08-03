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

There are three things you must do to use four-shape note names in your scores.

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

By default, Sacred Harp four-shape system will be used.
To turn shaped notes off, use `\roundHeads`.

### Seven-shape
There are three things you must do to use seven-shape note names in your scores.

* At the beginning of your score, `\include "doremi.ly"`.

* Where you would ordinarily use the `\key` command to set the key signature
  for a part, instead use `\set-do`. For a piece in C Major, you would use
  `\set-do c`. For a piece in G minor, you would use `\set-do bf`.

* Where you would ordinarily use the `\relative` environment, instead use
  `\doremi`. It has the same syntax as `\relative`, but it takes care of
  transposition so that `do` falls on the correct note.

By default, the Aikin seven-shape system found in modern editions of the
Christian Harmony will be used. To select a different system, use
`\funkHeads` or `\walkerHeads`. (You will never have to use the commands
`\funkHeadsMinor` or `\walkerHeadsMinor`.) To turn shaped notes off, use
`\roundHeads`.

### MIDI output
In some singing traditions, the sixth degree of the minor scale is raised in
some pieces. This raised sixth is rarely written. To generate a printed score
without accidentals, but raise the sixth degree in the MIDI output, use
`\fasola-modal` instead of `\fasola` or `\doremi-modal` instead of `\doremi`.

### Accidentals
Alterations with written accidentals are rare in four-shape traditions, but
they do occur.  They are more common in seven-shape traditions. There is also
some disagreement on which syllables to use for some of the altered notes.

The following altered syllables are recognized in seven-shape mode:

Pitch | Syllable 
----|----
 Raised "do"| `di`
 Lowered "re"| `ra`
 Raised "re"| `ri`
Lowered "mi"| `ma` or `me`
Raised "fa"| `fi`
Lowered "so"| `se`
Raised "so"| `si`
 Lowered "la"| `le` or `lo`
 Raised "la"| `li`
 Lowered "ti"| `ta` or `te`

And these are recognized in four-shape mode:

Pitch | Syllable 
----|----
Raised "fa"| `fi`
Lowered "so"| `se`
Raised "so"| `si`
 Lowered "la"| `le` or `lo`
 Raised "la"| `li`
Lowered "mi"| `ma` or `me`
