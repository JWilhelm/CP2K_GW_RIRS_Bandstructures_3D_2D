# CP2K GW RI-RS band structures: 3D and 2D

G₀W₀@PBE band gaps of 32 bulk materials and 4 transition-metal-dichalcogenide monolayers with the
periodic RI-RS GW implementation of CP2K, for five augmented MOLOPT basis sets. Each table entry is
`gap (eV) / compute time (core-hours)` and links to the folder with input, output and band
structures.

## Code, machine, input

- CP2K commit `ca4cd0ec1f` ([cp2k/cp2k#6553](https://github.com/cp2k/cp2k/pull/6553), on top of master with the periodic RI-RS GW of
  cp2k/cp2k#6447). Noctua 2 at PC2 Paderborn (AMD EPYC Milan, 128 cores per node), 16 MPI ranks ×
  8 OpenMP threads per node.
- One input file per calculation (`input.inp`). The GW part only switches the method on; every
  GW parameter is at its default (Nevanlinna analytic continuation, 30 time/frequency points,
  automatic RI basis with RI_AO_RATIO 3, RS_AO_RATIO per basis set, RI-RS Tikhonov regularization
  1E-4):

```
&GW
  &AUTO_RI
  &END AUTO_RI
  &RI_RS
    &GRID_OPTIMIZATION
    &END GRID_OPTIMIZATION
  &END RI_RS
&END GW
&SOC
&END SOC
```

- `&SOC` is present for all materials whose pseudopotentials have spin-orbit parameters; the
  semicore UZH potentials (Cd q20, Ga/In q21, As/Sb q23) have none, so these materials run without
  SOC.
- DFT part: PBE, bulk 12×12×12 Monkhorst-Pack mesh with GPW (cutoff 1800 Ry), 2D 16×16×1 mesh with
  GAPW (cutoff 500 Ry) and the 2D analytic Poisson solver.
- Table gap: bulk G₀W₀ indirect gap without SOC; 2D G₀W₀+SOC gap at K.
- Deviation from the standard input: GaP_GTH_q21_q5 aug-DZ2 uses EPS_SCF 1.0E-6 (the SCF stalls
  at a noise floor of 3-8E-7 with 1.0E-7).

## Mean absolute deviation from VASP

Reference = VASP G₀W₀@PBE gap, averaged where two are given: [1](https://doi.org/10.1103/PhysRevB.90.075125)
(Klimeš, Kaltak, Kresse 2014), [4](https://doi.org/10.1038/s41524-025-01833-w) (Varrassi et al. 2025),
2D: VASP G₀W₀@PBE+SOC from [5](https://arxiv.org/html/2507.18411). `old_v1` = previous version of this
table (see [old_v1/](old_v1/)).

| Basis | Materials | MAD this version (eV) | MAD old_v1 (eV) |
|:---|---:|---:|---:|
| aug-SZ2 | 32 | 0.268 | 0.264 |
| aug-DZ1 | 32 | 0.251 | 0.255 |
| aug-DZ2 | 32 | 0.212 | 0.226 |
| aug-TZ1 | 32 | 0.175 | 0.184 |
| aug-TZ2 | 32 | 0.138 | 0.149 |

## Results

| Material | aug-SZ2 | aug-DZ1 | aug-DZ2 | aug-TZ1 | aug-TZ2 | Reference (eV) |
|:---|---:|---:|---:|---:|---:|:---|
| [2D_MoS2](2D_MoS2/) | [2.358 / 6.90](2D_MoS2/aug-SZ2_k16/) | [2.391 / 8.85](2D_MoS2/aug-DZ1_k16/) | [2.335 / 13.94](2D_MoS2/aug-DZ2_k16/) | [2.343 / 30.35](2D_MoS2/aug-TZ1_k16/) | [2.325 / 48.38](2D_MoS2/aug-TZ2_k16/) | 2.29 VASP; 2.30 old CP2K [5](https://arxiv.org/html/2507.18411) |
| [2D_MoSe2](2D_MoSe2/) | [1.920 / 6.32](2D_MoSe2/aug-SZ2_k16/) | [1.964 / 8.56](2D_MoSe2/aug-DZ1_k16/) | [1.976 / 13.36](2D_MoSe2/aug-DZ2_k16/) | [1.979 / 28.34](2D_MoSe2/aug-TZ1_k16/) | [1.972 / 46.45](2D_MoSe2/aug-TZ2_k16/) | 2.01 VASP; 1.94 old CP2K [5](https://arxiv.org/html/2507.18411) |
| [2D_WS2](2D_WS2/) | [2.412 / 5.35](2D_WS2/aug-SZ2_k16/) | [2.405 / 9.46](2D_WS2/aug-DZ1_k16/) | [2.374 / 14.26](2D_WS2/aug-DZ2_k16/) | [2.438 / 30.31](2D_WS2/aug-TZ1_k16/) | [2.387 / 49.21](2D_WS2/aug-TZ2_k16/) | 2.37 VASP; 2.34 old CP2K [5](https://arxiv.org/html/2507.18411) |
| [2D_WSe2](2D_WSe2/) | [1.930 / 5.11](2D_WSe2/aug-SZ2_k16/) | [1.977 / 9.16](2D_WSe2/aug-DZ1_k16/) | [1.976 / 14.23](2D_WSe2/aug-DZ2_k16/) | [1.994 / 28.72](2D_WSe2/aug-TZ1_k16/) | [1.973 / 46.66](2D_WSe2/aug-TZ2_k16/) | 2.02 VASP; 1.93 old CP2K [5](https://arxiv.org/html/2507.18411) |
| [AlAs_GTH_q3_q23](AlAs_GTH_q3_q23/) | [2.014 / 13.51](AlAs_GTH_q3_q23/aug-SZ2/) | [1.944 / 23.91](AlAs_GTH_q3_q23/aug-DZ1/) | [2.072 / 32.63](AlAs_GTH_q3_q23/aug-DZ2/) | [2.111 / 77.96](AlAs_GTH_q3_q23/aug-TZ1/) | [2.163 / 114.23](AlAs_GTH_q3_q23/aug-TZ2/) | 2.31 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.36 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [AlAs_GTH_q3_q5](AlAs_GTH_q3_q5/) | [2.005 / 10.75](AlAs_GTH_q3_q5/aug-SZ2/) | [1.948 / 21.22](AlAs_GTH_q3_q5/aug-DZ1/) | [1.968 / 29.34](AlAs_GTH_q3_q5/aug-DZ2/) | [2.063 / 52.92](AlAs_GTH_q3_q5/aug-TZ1/) | [2.099 / 71.85](AlAs_GTH_q3_q5/aug-TZ2/) | 2.31 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.36 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [AlN](AlN/) | [6.502 / 27.89](AlN/aug-SZ2/) | [5.754 / 74.11](AlN/aug-DZ1/) | [5.800 / 116.57](AlN/aug-DZ2/) | [5.802 / 266.15](AlN/aug-TZ1/) | [5.857 / 422.94](AlN/aug-TZ2/) | 5.86 / 5.80 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 6.07 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [AlP](AlP/) | [2.277 / 12.18](AlP/aug-SZ2/) | [2.364 / 18.85](AlP/aug-DZ1/) | [2.363 / 28.05](AlP/aug-DZ2/) | [2.477 / 68.55](AlP/aug-TZ1/) | [2.517 / 104.08](AlP/aug-TZ2/) | 2.48 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.46 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [AlSb_GTH_q3_q23](AlSb_GTH_q3_q23/) | [1.752 / 13.67](AlSb_GTH_q3_q23/aug-SZ2/) | [1.577 / 24.09](AlSb_GTH_q3_q23/aug-DZ1/) | [1.654 / 33.97](AlSb_GTH_q3_q23/aug-DZ2/) | [1.694 / 101.97](AlSb_GTH_q3_q23/aug-TZ1/) | [1.773 / 143.99](AlSb_GTH_q3_q23/aug-TZ2/) | 1.87 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.88 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [AlSb_GTH_q3_q5](AlSb_GTH_q3_q5/) | [1.656 / 10.95](AlSb_GTH_q3_q5/aug-SZ2/) | [1.494 / 24.81](AlSb_GTH_q3_q5/aug-DZ1/) | [1.565 / 30.28](AlSb_GTH_q3_q5/aug-DZ2/) | [1.617 / 56.94](AlSb_GTH_q3_q5/aug-TZ1/) | [1.676 / 75.18](AlSb_GTH_q3_q5/aug-TZ2/) | 1.87 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.88 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [Ar](Ar/) | [13.070 / 7.53](Ar/aug-SZ2/) | [13.289 / 18.40](Ar/aug-DZ1/) | [13.107 / 22.86](Ar/aug-DZ2/) | [13.252 / 29.82](Ar/aug-TZ1/) | [13.178 / 38.34](Ar/aug-TZ2/) | — |
| [BAs](BAs/) | [1.854 / 11.21](BAs/aug-SZ2/) | [1.810 / 26.25](BAs/aug-DZ1/) | [1.817 / 34.36](BAs/aug-DZ2/) | [1.808 / 59.52](BAs/aug-TZ1/) | [1.839 / 84.11](BAs/aug-TZ2/) | 1.91 / 1.83 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807) |
| [BN_cubic](BN_cubic/) | [6.284 / 19.49](BN_cubic/aug-SZ2/) | [6.312 / 84.23](BN_cubic/aug-DZ1/) | [6.285 / 124.60](BN_cubic/aug-DZ2/) | [6.260 / 214.42](BN_cubic/aug-TZ1/) | [6.323 / 369.40](BN_cubic/aug-TZ2/) | 6.40 [1](https://doi.org/10.1103/PhysRevB.90.075125); 6.39 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [BN_hexagonal_bulk](BN_hexagonal_bulk/) | [5.945 / 27.80](BN_hexagonal_bulk/aug-SZ2/) | [5.895 / 83.13](BN_hexagonal_bulk/aug-DZ1/) | [5.944 / 125.08](BN_hexagonal_bulk/aug-DZ2/) | [5.954 / 265.70](BN_hexagonal_bulk/aug-TZ1/) | [5.999 / 380.97](BN_hexagonal_bulk/aug-TZ2/) | 6.17 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [BP](BP/) | [2.172 / 10.67](BP/aug-SZ2/) | [2.031 / 26.05](BP/aug-DZ1/) | [2.019 / 34.47](BP/aug-DZ2/) | [2.039 / 77.76](BP/aug-TZ1/) | [2.094 / 117.17](BP/aug-TZ2/) | 1.99 / 2.11 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 2.13 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [C](C/) | [5.577 / 19.39](C/aug-SZ2/) | [5.569 / 142.32](C/aug-DZ1/) | [5.612 / 215.00](C/aug-DZ2/) | [5.569 / 493.67](C/aug-TZ1/) | [5.590 / 901.34](C/aug-TZ2/) | 5.60 / 5.69 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 5.72 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [CdS_wurtzite_GTH_q20_q6](CdS_wurtzite_GTH_q20_q6/) | [2.013 / 31.95](CdS_wurtzite_GTH_q20_q6/aug-SZ2/) | [2.019 / 106.17](CdS_wurtzite_GTH_q20_q6/aug-DZ1/) | [2.077 / 159.44](CdS_wurtzite_GTH_q20_q6/aug-DZ2/) | [2.138 / 334.18](CdS_wurtzite_GTH_q20_q6/aug-TZ1/) | [2.172 / 1139.55](CdS_wurtzite_GTH_q20_q6/aug-TZ2/) | 2.05 / 2.19 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 2.19 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [CdS_zincblende_GTH_q20_q6](CdS_zincblende_GTH_q20_q6/) | [1.925 / 15.67](CdS_zincblende_GTH_q20_q6/aug-SZ2/) | [1.931 / 32.98](CdS_zincblende_GTH_q20_q6/aug-DZ1/) | [1.994 / 44.48](CdS_zincblende_GTH_q20_q6/aug-DZ2/) | [2.053 / 93.57](CdS_zincblende_GTH_q20_q6/aug-TZ1/) | [2.085 / 132.63](CdS_zincblende_GTH_q20_q6/aug-TZ2/) | 2.15 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.06 / 2.06 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807) |
| [CdSe_GTH_q20_q6](CdSe_GTH_q20_q6/) | [1.137 / 12.72](CdSe_GTH_q20_q6/aug-SZ2/) | [1.140 / 30.99](CdSe_GTH_q20_q6/aug-DZ1/) | [1.234 / 42.18](CdSe_GTH_q20_q6/aug-DZ2/) | [1.267 / 87.72](CdSe_GTH_q20_q6/aug-TZ1/) | [1.331 / 148.08](CdSe_GTH_q20_q6/aug-TZ2/) | 1.52 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.71 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [CdTe_GTH_q20_q6](CdTe_GTH_q20_q6/) | [1.494 / 12.61](CdTe_GTH_q20_q6/aug-SZ2/) | [1.245 / 28.87](CdTe_GTH_q20_q6/aug-DZ1/) | [1.353 / 41.45](CdTe_GTH_q20_q6/aug-DZ2/) | [1.346 / 78.47](CdTe_GTH_q20_q6/aug-TZ1/) | [1.413 / 118.87](CdTe_GTH_q20_q6/aug-TZ2/) | 1.57 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.68 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [GaAs_GTH_q21_q5](GaAs_GTH_q21_q5/) | [1.147 / 19.18](GaAs_GTH_q21_q5/aug-SZ2/) | [1.014 / 57.12](GaAs_GTH_q21_q5/aug-DZ1/) | [1.061 / 72.81](GaAs_GTH_q21_q5/aug-DZ2/) | [1.104 / 218.45](GaAs_GTH_q21_q5/aug-TZ1/) | [1.128 / 298.37](GaAs_GTH_q21_q5/aug-TZ2/) | 1.23 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.34 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [GaP_GTH_q21_q5](GaP_GTH_q21_q5/) | [2.176 / 23.40](GaP_GTH_q21_q5/aug-SZ2/) | [2.201 / 71.96](GaP_GTH_q21_q5/aug-DZ1/) | [2.183 / 77.34](GaP_GTH_q21_q5/aug-DZ2/) | [2.311 / 254.23](GaP_GTH_q21_q5/aug-TZ1/) | [2.344 / 424.89](GaP_GTH_q21_q5/aug-TZ2/) | 2.30 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.37 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [Ge](Ge/) | [0.493 / 10.15](Ge/aug-SZ2/) | [0.472 / 22.67](Ge/aug-DZ1/) | [0.559 / 28.07](Ge/aug-DZ2/) | [0.555 / 45.46](Ge/aug-TZ1/) | [0.589 / 59.94](Ge/aug-TZ2/) | 0.63 direct; 0.67 Γ–L [1](https://doi.org/10.1103/PhysRevB.90.075125) |
| [InP_GTH_q21_q5](InP_GTH_q21_q5/) | [1.167 / 17.65](InP_GTH_q21_q5/aug-SZ2/) | [1.076 / 45.09](InP_GTH_q21_q5/aug-DZ1/) | [1.075 / 63.96](InP_GTH_q21_q5/aug-DZ2/) | [1.157 / 194.50](InP_GTH_q21_q5/aug-TZ1/) | [1.198 / 272.52](InP_GTH_q21_q5/aug-TZ2/) | 1.23 [1](https://doi.org/10.1103/PhysRevB.90.075125); 1.29 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [LiCl](LiCl/) | [8.488 / 13.37](LiCl/aug-SZ2/) | [8.943 / 25.40](LiCl/aug-DZ1/) | [8.931 / 35.17](LiCl/aug-DZ2/) | [9.064 / 72.05](LiCl/aug-TZ1/) | [9.168 / 107.65](LiCl/aug-TZ2/) | 8.64 / 8.71 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 9.21 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [LiF](LiF/) | [14.300 / 31.34](LiF/aug-SZ2/) | [13.857 / 58.12](LiF/aug-DZ1/) | [13.725 / 96.22](LiF/aug-DZ2/) | [13.720 / 202.85](LiF/aug-TZ1/) | [13.722 / 302.49](LiF/aug-TZ2/) | 13.49 / 14.27 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 13.74 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [MgO](MgO/) | [7.656 / 40.10](MgO/aug-SZ2/) | [7.826 / 70.42](MgO/aug-DZ1/) | [7.437 / 117.27](MgO/aug-DZ2/) | [7.364 / 228.31](MgO/aug-TZ1/) | [7.389 / 404.59](MgO/aug-TZ2/) | 7.55 [1](https://doi.org/10.1103/PhysRevB.90.075125); 7.36 / 7.52 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 7.51 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [NaCl](NaCl/) | [7.655 / 23.25](NaCl/aug-SZ2/) | [8.144 / 36.29](NaCl/aug-DZ1/) | [7.957 / 47.54](NaCl/aug-DZ2/) | [8.209 / 117.35](NaCl/aug-TZ1/) | [8.279 / 201.49](NaCl/aug-TZ2/) | 7.80 / 7.92 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 9.27 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [Ne](Ne/) | [18.859 / 9.34](Ne/aug-SZ2/) | [19.152 / 18.76](Ne/aug-DZ1/) | [19.069 / 24.40](Ne/aug-DZ2/) | [19.420 / 36.33](Ne/aug-TZ1/) | [19.408 / 51.30](Ne/aug-TZ2/) | — |
| [Si](Si/) | [1.107 / 11.17](Si/aug-SZ2/) | [1.098 / 18.88](Si/aug-DZ1/) | [1.078 / 27.72](Si/aug-DZ2/) | [1.136 / 72.54](Si/aug-TZ1/) | [1.166 / 100.44](Si/aug-TZ2/) | 1.13 / 1.12 [2](https://doi.org/10.1103/PhysRevMaterials.5.013807); 1.3 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [SiC](SiC/) | [2.355 / 16.46](SiC/aug-SZ2/) | [2.277 / 65.66](SiC/aug-DZ1/) | [2.277 / 95.92](SiC/aug-DZ2/) | [2.339 / 213.42](SiC/aug-TZ1/) | [2.352 / 326.70](SiC/aug-TZ2/) | 2.42 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.42 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [TiO2_anatase](TiO2_anatase/) | [3.100 / 591.79](TiO2_anatase/aug-SZ2/) | [3.608 / 760.53](TiO2_anatase/aug-DZ1/) | [3.653 / 1270.92](TiO2_anatase/aug-DZ2/) | [3.793 / 2278.28](TiO2_anatase/aug-TZ1/) | [3.744 / 3594.70](TiO2_anatase/aug-TZ2/) | 3.73 [3](https://doi.org/10.1088/0953-8984/24/19/195503) |
| [TiO2_rutile](TiO2_rutile/) | [2.797 / 109.88](TiO2_rutile/aug-SZ2/) | [3.264 / 254.46](TiO2_rutile/aug-DZ1/) | [3.318 / 375.11](TiO2_rutile/aug-DZ2/) | [3.448 / 606.85](TiO2_rutile/aug-TZ1/) | [3.410 / 789.01](TiO2_rutile/aug-TZ2/) | 3.46 [3](https://doi.org/10.1088/0953-8984/24/19/195503) direkt; 3.39 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [ZnS_GTH_q20_q6](ZnS_GTH_q20_q6/) | [3.324 / 23.38](ZnS_GTH_q20_q6/aug-SZ2/) | [3.249 / 95.30](ZnS_GTH_q20_q6/aug-DZ1/) | [3.297 / 138.69](ZnS_GTH_q20_q6/aug-DZ2/) | [3.370 / 237.94](ZnS_GTH_q20_q6/aug-TZ1/) | [3.372 / 336.36](ZnS_GTH_q20_q6/aug-TZ2/) | 3.46 [1](https://doi.org/10.1103/PhysRevB.90.075125); 3.48 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [ZnSe_GTH_q20_q6](ZnSe_GTH_q20_q6/) | [2.224 / 20.26](ZnSe_GTH_q20_q6/aug-SZ2/) | [2.131 / 81.57](ZnSe_GTH_q20_q6/aug-DZ1/) | [2.202 / 131.90](ZnSe_GTH_q20_q6/aug-DZ2/) | [2.226 / 203.20](ZnSe_GTH_q20_q6/aug-TZ1/) | [2.285 / 296.02](ZnSe_GTH_q20_q6/aug-TZ2/) | 2.55 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.65 [4](https://doi.org/10.1038/s41524-025-01833-w) |
| [ZnTe_GTH_q20_q6](ZnTe_GTH_q20_q6/) | [2.464 / 19.72](ZnTe_GTH_q20_q6/aug-SZ2/) | [1.964 / 71.43](ZnTe_GTH_q20_q6/aug-DZ1/) | [2.051 / 104.21](ZnTe_GTH_q20_q6/aug-DZ2/) | [2.047 / 177.66](ZnTe_GTH_q20_q6/aug-TZ1/) | [2.105 / 255.57](ZnTe_GTH_q20_q6/aug-TZ2/) | 2.27 [1](https://doi.org/10.1103/PhysRevB.90.075125); 2.33 [4](https://doi.org/10.1038/s41524-025-01833-w) |

References: [1](https://doi.org/10.1103/PhysRevB.90.075125) Klimeš, Kaltak, Kresse, PRB 90, 075125
(2014); [2](https://doi.org/10.1103/PhysRevMaterials.5.013807) Ren et al., PR Materials 5, 013807
(2021); [3](https://doi.org/10.1088/0953-8984/24/19/195503) Landmann et al., JPCM 24, 195503 (2012);
[4](https://doi.org/10.1038/s41524-025-01833-w) Varrassi et al., npj Comput. Mater. (2025);
[5](https://arxiv.org/html/2507.18411) arXiv:2507.18411.

## Previous version

[old_v1/](old_v1/) contains all earlier calculations of this repository (older CP2K versions,
Otus and Noctua, partly split SCF/GW inputs, 2D k12 runs) with their original README.
