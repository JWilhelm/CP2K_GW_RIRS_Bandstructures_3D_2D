# CP2K GW RI-RS band structures — 3D and 2D

Historical calculation archive: 160 three-dimensional G₀W₀ calculations (32 crystal/pseudopotential variants, 27 formulas), plus 40 monolayer calculations for MoS₂, MoSe₂, WS₂ and WSe₂. AlSb is retained in both archived pseudopotential variants; GaSb remains excluded.

The [3D benchmark PDF](benchmark/benchmark.pdf) and [3D CSV](benchmark/benchmark.csv) retain their original 3D scope. The [monolayer table](benchmark/monolayers.csv) covers five augmented MOLOPT bases (SZ2, DZ1, DZ2, TZ1, TZ2) at both 12×12×1 and 16×16×1 k meshes, from the completed 20 October 2026 campaign. Five additional WSe₂ scaling layouts and later reproduction/diagnostic runs are outside this collection.

## Files and provenance

Browse `materials/<formula>/<variant>/<basis>/` for 3D data, and `materials/<formula>/monolayer/k12|k16/<basis>/` for 2D data. The single archived C, Si, Ge and SiC variants use `materials/<formula>/<basis>/` (diamond C/Si, q4 Ge and 3C SiC).

Every calculation folder contains a `calculation.tar.gz`, original input files, and `metadata.json` with the original source directory and SHA-256 hashes of archive members. Archives include CP2K output, band structures, basis/potential assets and scheduler logs. Large restart/checkpoint files, executables, libraries and CP2K source trees are excluded. Absolute paths are retained as provenance; adapt these and use the included `assets/` copies for reruns. Historical inputs may require their historical CP2K version.

[3D archive inventory](benchmark/archive_inventory.json) and [2D archive inventory](benchmark/monolayer_archive_inventory.json) list the packaged calculations. [Monolayer provenance](benchmark/monolayers_20261020/) includes the original manifest/runtime hashes, build information, historical completed Slurm accounting and source-file hashes. The latter describes the source transfer, including the unmodified 45-row source summary; only the 40 production cases are packaged as calculation archives.

## Times and scientific limits

3D core-hours use the allocated CPUs and elapsed time recorded in each metadata file. Monolayer metadata separately records CP2K total maximum time, Slurm elapsed seconds, allocated CPUs and allocated core-hours (elapsed seconds × allocated CPUs / 3600). Monolayer elapsed times come from the preserved historical accounting snapshot, not a fresh scheduler query. All 200 archived application outputs have normal end markers; all 40 added monolayer runs also have converged SCF, empty CP2K stderr, COMPLETED/0:0 historical accounting and matching input hashes.

The monolayer gaps are G₀W₀+SOC path gaps derived from printed eigenvalues. Original occupied-level reordering warnings are retained. The earlier campaign identified 29–44 meV gap changes between k12 and k16 and unresolved full-spectrum reproducibility. Normal completion is not proof of k convergence or scientific accuracy. These are historical results, not measurements of the current CP2K build. The 3D PDF contains its literature references; no new reference comparison is asserted here.

## Repository and retained provenance

Repository: [JWilhelm/CP2K_GW_RIRS_Bandstructures_3D_2D](https://github.com/JWilhelm/CP2K_GW_RIRS_Bandstructures_3D_2D).

This archive retains original research results, basis parameters, job identifiers, compute-node/user names, account/project identifiers and absolute cluster paths, including collaborator paths, for provenance. It is not anonymized. Restart data and software binaries are excluded.
