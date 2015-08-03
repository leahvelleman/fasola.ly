# fasola.ly and doremi.ly

Here are two useful plugins for composers of shape-note music:

* `fasola.ly` lets you enter notes in Lilypond using the four syllables used by
Sacred Harp singers.
* `doremi.ly` lets you use the seven syllables used to sing from the Christian Harmony,
Harp of Ages, etc.

Seven-syllable note entry *looks* a lot like Lilypond's built-in Spanish note names: you enter notes as `do`, `re`, `mi` and so on. But there is an important difference. In Spanish,
"do" is always C. But for shape-note singers, the position of "do" (or "fa")
depends on the key signature: it is the tonic in a major key, or the third
degree in a minor key. This plugin uses the syllables the way shape-note singers
would use them.

## Installation

Download the files `doremi.ly`, `fasola.ly` and `shapenote-common.ly`, and 
put them someplace where Lilypond can see them. (If you keep all the `.ly` files
you are working on in one directory, the easiest thing to do is to put these files 
in that directory as well.)

## Usage

### `fasola.ly`
If you `\include "fasola.ly"` at the beginning of a file, you will have access to four-shape note names.
You must use `\set-fa` instead of `key`, and `\fasola` instead of `\relative`.

```
\include "fasola.ly"
\set-fa g
\fasola g' { Fa So La fa so si la mi Fa }
```

Note that there are two *fa*s, two *so*s and two *la*s in an octave.
`fasola.ly` uses capitalization to distinguish between them. A major
scale is `Fa So La fa so la mi Fa`.

Notes with accidentals are written using modified syllables:

Pitch | Syllable 
----|----
Raised "fa"| `fi`
Lowered "so"| `se`
Raised "so"| `si`
 Lowered "la"| `le` or `lo`
 Raised "la"| `li`
Lowered "mi"| `ma` or `me`

If you are generating MIDI output, and you want the sixth scale degree in minor to be
raised in the MIDI but not in the printed score, use `\fasola-modal`.

### `doremi.ly`
If you `\include "doremi.ly"` at the beginning of a file, you will have access to seven-shape note names.
You must use `\set-do` instead of `key`, and `\doremi` instead of `\relative`.

```
\include "doremi.ly"
\set-do g
\doremi g' { do re mi fa so si la ti do }
```

Notes with accidentals are written using modified syllables:


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

If you are generating MIDI output, and you want the sixth scale degree in minor to be
raised in the MIDI but not in the printed score, use `\doremi-modal`.


