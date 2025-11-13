# Algorithmia: The Path of Logic — Early Access Build

Algorithmia is a Godot 4.2-driven, top-down puzzle adventure that turns data structures and algorithms into explorable regions. This Early Access build focuses on three study biomes—Prologue: Chamber of Flow, Array Plains, and Twin Rivers—each blending puzzles, bosses, and interactive learning systems like the Concept Bridge, Logic Forge, and the Codex.

## Build & Run
1. Install [Godot 4.2.x](https://godotengine.org/download).
2. Clone this repository and open it from the Godot project manager:
   ```bash
   git clone <your-fork-url> algorithmia
   cd algorithmia
   godot4 --editor project.godot
   ```
3. Use `WorldRoot.tscn` as the temporary startup scene while systems take shape.
4. Run the project to validate the folder wiring; all scenes/scripts are placeholders ready for implementation.

## Directory Highlights
- `scenes/` – Top-level entry scenes (temporary WorldRoot) that glue the Early Access build.
- `singletons/` – Global autoloads: `GameState`, `CodexManager`, `LogicForgeManager`, `PuzzleManager`, `Analytics`, and the `RegionLoader`.
- `regions/` – Region hubs (Prologue, Array Plains, Twin Rivers) with NPC, prop, and map stubs.
- `puzzles/` – Puzzle scenes grouped per region, ready for logic injection.
- `bosses/` – Sentinel, Shuffler, and Mirror Serpent encounters.
- `concept_bridge/`, `logic_forge/`, `codex/` – Core learning systems with UI scenes, drills, and placeholder databases.
- `systems/` – Cross-cutting Godot scripts: dialogue, puzzle routing, interactions, save shell, and audio.
- `ui/` and `assets/` – Shared HUD elements, dialogue boxes, and import stubs.
- `data/` – JSON manifests for regions, puzzles, Codex entries, and NPC dialogue.
- `docs/` – Developer onboarding and region planning notes.

## Project Structure
- Regions live exclusively under `regions/`, each with controller scenes plus `NPCs/`, `props/`, and `maps/` staging areas.
- All puzzles are grouped inside `puzzles/<region>/` with matching `.tscn` and `.gd` pairs per encounter.
- Boss fights reside in `bosses/<name>/` so mechanics, audio cues, and art remain encapsulated.
- Global systems and singletons live in `systems/` and `singletons/` respectively; register singletons as autoloads once functional.
- Learning platforms inhabit `concept_bridge/`, `logic_forge/`, and `codex/`, keeping UI and data assets separate from overworld content.

## Next Steps
- Flesh out scene logic per folder comments.
- Wire the listed singletons as autoloads via `project.godot` once real logic exists.
- Replace placeholder JSON with real manifests before content lock.

Happy forging puzzles!
