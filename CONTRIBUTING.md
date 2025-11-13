# Contributing

1. **Fork + Branch** – Fork the repository and branch from `main` using `feature/<topic>` naming.
2. **Godot 4.2** – Use the same engine version to avoid `.import` churn. Do not commit generated `.import` folders.
3. **Autoloads** – Register only the singletons under `singletons/` until new systems are approved.
4. **Scenes & Scripts** – Keep one script per scene, prefer composition, and document non-trivial logic near the relevant nodes.
5. **Data Files** – Validate JSON with `godot --check-only` or any JSON linter before committing.
6. **Pull Requests** – Provide a short video/gif or screenshot plus a checklist of tested scenarios.
