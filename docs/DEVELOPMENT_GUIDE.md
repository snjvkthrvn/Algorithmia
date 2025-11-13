# Development Guide

## Engine Setup
- Install Godot 4.2.x and enable the Forward Plus renderer.
- Register the autoloads from `singletons/` once their logic is implemented.

## Content Workflow
1. Block out a region under `regions/<region_name>/` using the provided NPC, props, and maps subfolders.
2. Create puzzle scenes under `puzzles/<region_name>/` and register them in `data/puzzle_manifest.json`.
3. Link any Codex unlocks via `CodexManager` and surface them in `codex/CodexScreen.tscn`.
4. Boss encounters belong in `bosses/<boss_name>/` and should integrate with the `PuzzleSystem` once combat logic exists.

## Testing
- Keep placeholder scenes lean so they load fast in CI.
- Use `TODO.md` to track missing assets or data points discovered during playtests.
