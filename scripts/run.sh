#!/usr/bin/env bash
declare DIR="$(cd "$(dirname "$0")/.." && pwd -P)"
set -e

"$DIR/scripts/compile.sh"

cd "$DIR";
git submodule update --init

cd "$DIR/anki";
ANKI_BASE="$DIR/ankidata" "$DIR/anki/scripts/ts-run"
