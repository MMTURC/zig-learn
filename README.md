# Zig Learn

Has all the zig code I write while I learn Zig along with some notes

You can follow along or just read through some of the code and get familiar with Zig

All code samples come from https://pedropark99.github.io/zig-book/ along with some modifications I might make because I like to experiment.

## Notes (Very Unorganized and may not make a lot of sense)
### These are just rough notes to understand some important concepts.

Zig has its own build system within the language itself.

build.zig.zon serves as a way for us to fetch dependencies from the internet.

Think of it as zigs version of Pipfile, Cargo.toml, and package.json. 

It is considered standard to remove the main.zig file in case
