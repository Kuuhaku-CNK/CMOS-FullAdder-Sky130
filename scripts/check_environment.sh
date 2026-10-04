#!/usr/bin/env bash

set -uo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(cd "$script_dir/.." && pwd)"

# shellcheck source=../.designinit
source "$project_root/.designinit"

failures=0

check_command() {
    local tool="$1"
    if command -v "$tool" >/dev/null 2>&1; then
        printf '[OK]   %-10s %s\n' "$tool" "$(command -v "$tool")"
    else
        printf '[FAIL] %-10s not found\n' "$tool"
        failures=$((failures + 1))
    fi
}

printf 'Project : %s\n' "$project_root"
printf 'PDK     : %s\n' "$PDK"
printf 'PDK_ROOT: %s\n' "$PDK_ROOT"
printf 'PDKPATH : %s\n\n' "$PDKPATH"

if [ -d "$PDKPATH/libs.tech" ]; then
    printf '[OK]   SKY130A technology directory exists\n'
else
    printf '[FAIL] SKY130A technology directory is missing\n'
    failures=$((failures + 1))
fi
for tool in xschem ngspice magic netgen klayout git; do
    check_command "$tool"
done

if [ -w "$project_root" ]; then
    printf '[OK]   Project directory is writable\n'
else
    printf '[FAIL] Project directory is not writable\n'
    failures=$((failures + 1))
fi

if [ "$failures" -eq 0 ]; then
    printf '\nEnvironment check: PASS\n'
else
    printf '\nEnvironment check: FAIL (%d issue(s))\n' "$failures"
    exit 1
fi
