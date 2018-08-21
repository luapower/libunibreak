---
tagline: Unicode line breaking
---

## `local ub = require'libunibreak'`

A ffi binding to [libunibreak][libunibreak lib], a C library implementing
the [Unicode Line Breaking Algorithm][tr14] and word breaking
from [Unicode Text Segmentation][tr29].

## Line breaking

### `ub.linebreaks(s,[len],[lang],[out]) -> line_breaks`

`lang` can be one of:

* `'de'`: German
* `'en'`: English
* `'es'`: Spanish
* `'fr'`: French
* `'ja'`: Japanese
* `'ko'`: Korean
* `'ru'`: Russian
* `'zh'`: Chinese

...with or without the `'-strict'` suffix (see [CJ section on ULBA][tr14]).

The returned `line_breaks` is a 0-based array of flags, one for each byte
of the input string:

* `0`: Break is mandatory.
* `1`: Break is allowed.
* `2`: No break is possible.

## Word breaking

### `ub.wordbreaks(s,[len],[lang],[out]) -> word_breaks`

The returned `word_breaks` is a 0-based array of flags, one for each byte
of the input string:

* `0`: Break is allowed.
* `1`: No break is allowed.

## Grapheme breaking

### `ub.graphemebreaks(s,[len],[lang],[out]) -> grapheme_breaks`

The returned `grapheme_breaks` is a 0-based array of flags, one for each byte
of the input string:

* `0`: Break is allowed.
* `1`: No break is allowed.

[libunibreak lib]: http://vimgadgets.sourceforge.net/libunibreak/
[tr14]:            http://www.unicode.org/reports/tr14/
[tr29]:            http://www.unicode.org/reports/tr29/
