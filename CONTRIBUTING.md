# Contributing

Open an issue before proposing a public API change. Pull requests must preserve
typed domain returns, keep HTTP envelopes private, include tests, and pass every
required workflow. Generated contract files are reviewed as source; regeneration
tools are maintained outside this public repository.

Generated models live in `lib/src/generated/<resource>/<type>.dart`, with one
top-level type per file. Keep new contract types in the matching resource
module and register their part in `lib/inttegro.dart`; do not recreate a
single generated-model file.
