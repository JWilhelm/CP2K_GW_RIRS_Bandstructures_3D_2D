# CP2K GW-k band-structure calculations

This repository collects the 3D G₀W₀ calculations in the [benchmark PDF](benchmark/benchmark.pdf) and [machine-readable table](benchmark/benchmark.csv). It contains 32 crystal/pseudopotential variants and 160 basis calculations across 27 chemical formulas. GaSb is excluded.

Browse `materials/<formula>/<phase-or-pseudopotential>/<basis>/` for the exact CP2K inputs, Slurm job IDs, band gaps, core-hours, and file hashes. The [complete calculation archive](https://github.com/JWilhelm/CP2K_GW_k_bandstructures/releases/download/2026-10-28/GW-k_3D_calculations_20261028.tar) contains one `calculation.tar.gz` per basis with the CP2K output, band structures, and scheduler logs. Large restart/checkpoint files remain in the original Otus directories identified by each `metadata.json`. Absolute paths in the original inputs refer to those Otus runs; use the included `assets/` copies when rerunning elsewhere.

The PDF reports the fundamental gap in eV and measured allocated core-hours for each listed Slurm job. The cited literature values are shown in the PDF.
