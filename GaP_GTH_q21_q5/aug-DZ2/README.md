# GaP_GTH_q21_q5 · aug-DZ2

Table gap (G0W0 indirect gap without SOC): 2.183 eV · core-hours: 77.34 · 4 node(s) normal, 64 MPI ranks × 8 OpenMP threads · elapsed 544 s · CP2K ca4cd0ec1f ([cp2k/cp2k#6553](https://github.com/cp2k/cp2k/pull/6553))

- PBE indirect gap: 1.591 eV
- G0W0 indirect gap: 2.183 eV
- G0W0 direct gap: 2.502 eV

Deviation from the standard input: EPS_SCF 1.0E-6 instead of 1.0E-7: with 1.0E-7 the SCF stalls at a convergence noise floor of 3-8E-7 (total energy constant to 1E-11 Ha).

Files: `input.inp` (CP2K input), `output.out` (CP2K output), `run.sbatch` (Slurm script), `bandstructure_*` (band structures written by CP2K).
