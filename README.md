# fasola.ly and doremi.ly

These macros allow you to enter notes in Lilypond using either the four
syllables used by Sacred Harp singers or the seven syllables used in the
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
