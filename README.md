# CP2K GW RI-RS band structures: 3D and 2D

The repository contains 200 completed CP2K GW calculations: 160 for 3D crystals and 40 for 2D MoS₂, MoSe₂, WS₂ and WSe₂. Calculation folders sit directly in the repository. Each basis folder has the CP2K input, full output and band files in `calculation.tar.gz`, plus a short run guide and checksums in `metadata.json`.

The 2D results use five augmented MOLOPT bases at 12×12×1 and 16×16×1 k meshes. Their gaps include SOC. The two k meshes differ by 29–44 meV across this series, so the 16×16×1 results do not establish k convergence. The 3D and 2D gaps were computed with different settings; compare them within their respective series. CPU-hours are allocated CPUs times Slurm elapsed time.

| Material | Basis / grid | k mesh | Method | Gap (eV) | CPU-hours | Job |
|---|---|---|---|---:|---:|---:|
| 2D_MoS2 | [aug-DZ1 · k12](2D_MoS2/aug-DZ1_k12/) | 12×12×1 | G₀W₀+SOC | 2.163 | 3.787 | 3771755 |
| 2D_MoS2 | [aug-DZ1 · k16](2D_MoS2/aug-DZ1_k16/) | 16×16×1 | G₀W₀+SOC | 2.201 | 4.000 | 3771756 |
| 2D_MoS2 | [aug-DZ2 · k12](2D_MoS2/aug-DZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.118 | 5.760 | 3771757 |
| 2D_MoS2 | [aug-DZ2 · k16](2D_MoS2/aug-DZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.155 | 6.240 | 3771758 |
| 2D_MoS2 | [aug-SZ2 · k12](2D_MoS2/aug-SZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.172 | 3.733 | 3771753 |
| 2D_MoS2 | [aug-SZ2 · k16](2D_MoS2/aug-SZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.210 | 3.840 | 3771754 |
| 2D_MoS2 | [aug-TZ1 · k12](2D_MoS2/aug-TZ1_k12/) | 12×12×1 | G₀W₀+SOC | 2.151 | 11.360 | 3771759 |
| 2D_MoS2 | [aug-TZ1 · k16](2D_MoS2/aug-TZ1_k16/) | 16×16×1 | G₀W₀+SOC | 2.189 | 12.000 | 3771760 |
| 2D_MoS2 | [aug-TZ2 · k12](2D_MoS2/aug-TZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.130 | 17.387 | 3771761 |
| 2D_MoS2 | [aug-TZ2 · k16](2D_MoS2/aug-TZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.169 | 18.720 | 3771762 |
| 2D_MoSe2 | [aug-DZ1 · k12](2D_MoSe2/aug-DZ1_k12/) | 12×12×1 | G₀W₀+SOC | 1.810 | 3.573 | 3771765 |
| 2D_MoSe2 | [aug-DZ1 · k16](2D_MoSe2/aug-DZ1_k16/) | 16×16×1 | G₀W₀+SOC | 1.844 | 3.840 | 3771766 |
| 2D_MoSe2 | [aug-DZ2 · k12](2D_MoSe2/aug-DZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.798 | 5.280 | 3771767 |
| 2D_MoSe2 | [aug-DZ2 · k16](2D_MoSe2/aug-DZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.832 | 5.760 | 3771768 |
| 2D_MoSe2 | [aug-SZ2 · k12](2D_MoSe2/aug-SZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.740 | 2.827 | 3771763 |
| 2D_MoSe2 | [aug-SZ2 · k16](2D_MoSe2/aug-SZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.772 | 2.987 | 3771764 |
| 2D_MoSe2 | [aug-TZ1 · k12](2D_MoSe2/aug-TZ1_k12/) | 12×12×1 | G₀W₀+SOC | 1.807 | 8.960 | 3771769 |
| 2D_MoSe2 | [aug-TZ1 · k16](2D_MoSe2/aug-TZ1_k16/) | 16×16×1 | G₀W₀+SOC | 1.841 | 9.813 | 3771770 |
| 2D_MoSe2 | [aug-TZ2 · k12](2D_MoSe2/aug-TZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.793 | 13.333 | 3771771 |
| 2D_MoSe2 | [aug-TZ2 · k16](2D_MoSe2/aug-TZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.827 | 14.667 | 3771772 |
| 2D_WS2 | [aug-DZ1 · k12](2D_WS2/aug-DZ1_k12/) | 12×12×1 | G₀W₀+SOC | 2.202 | 3.413 | 3771775 |
| 2D_WS2 | [aug-DZ1 · k16](2D_WS2/aug-DZ1_k16/) | 16×16×1 | G₀W₀+SOC | 2.246 | 3.680 | 3771776 |
| 2D_WS2 | [aug-DZ2 · k12](2D_WS2/aug-DZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.168 | 4.960 | 3771777 |
| 2D_WS2 | [aug-DZ2 · k16](2D_WS2/aug-DZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.212 | 5.600 | 3771778 |
| 2D_WS2 | [aug-SZ2 · k12](2D_WS2/aug-SZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.216 | 2.080 | 3771773 |
| 2D_WS2 | [aug-SZ2 · k16](2D_WS2/aug-SZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.255 | 2.133 | 3771774 |
| 2D_WS2 | [aug-TZ1 · k12](2D_WS2/aug-TZ1_k12/) | 12×12×1 | G₀W₀+SOC | 2.181 | 10.613 | 3771779 |
| 2D_WS2 | [aug-TZ1 · k16](2D_WS2/aug-TZ1_k16/) | 16×16×1 | G₀W₀+SOC | 2.217 | 11.520 | 3771780 |
| 2D_WS2 | [aug-TZ2 · k12](2D_WS2/aug-TZ2_k12/) | 12×12×1 | G₀W₀+SOC | 2.182 | 16.693 | 3771781 |
| 2D_WS2 | [aug-TZ2 · k16](2D_WS2/aug-TZ2_k16/) | 16×16×1 | G₀W₀+SOC | 2.225 | 17.813 | 3771782 |
| 2D_WSe2 | [aug-DZ1 · k12](2D_WSe2/aug-DZ1_k12/) | 12×12×1 | G₀W₀+SOC | 1.794 | 3.147 | 3771785 |
| 2D_WSe2 | [aug-DZ1 · k16](2D_WSe2/aug-DZ1_k16/) | 16×16×1 | G₀W₀+SOC | 1.832 | 3.413 | 3771786 |
| 2D_WSe2 | [aug-DZ2 · k12](2D_WSe2/aug-DZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.785 | 4.800 | 3771787 |
| 2D_WSe2 | [aug-DZ2 · k16](2D_WSe2/aug-DZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.824 | 5.387 | 3771788 |
| 2D_WSe2 | [aug-SZ2 · k12](2D_WSe2/aug-SZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.772 | 1.653 | 3771783 |
| 2D_WSe2 | [aug-SZ2 · k16](2D_WSe2/aug-SZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.809 | 1.813 | 3771784 |
| 2D_WSe2 | [aug-TZ1 · k12](2D_WSe2/aug-TZ1_k12/) | 12×12×1 | G₀W₀+SOC | 1.773 | 9.227 | 3771789 |
| 2D_WSe2 | [aug-TZ1 · k16](2D_WSe2/aug-TZ1_k16/) | 16×16×1 | G₀W₀+SOC | 1.802 | 10.027 | 3771790 |
| 2D_WSe2 | [aug-TZ2 · k12](2D_WSe2/aug-TZ2_k12/) | 12×12×1 | G₀W₀+SOC | 1.787 | 14.773 | 3771791 |
| 2D_WSe2 | [aug-TZ2 · k16](2D_WSe2/aug-TZ2_k16/) | 16×16×1 | G₀W₀+SOC | 1.818 | 14.240 | 3771792 |
| AlAs_GTH_Q3_Q23 | [aug-DZ1](AlAs_GTH_Q3_Q23/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.971 | 61.440 | 3793624 |
| AlAs_GTH_Q3_Q23 | [aug-DZ2](AlAs_GTH_Q3_Q23/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.025 | 67.840 | 3793625 |
| AlAs_GTH_Q3_Q23 | [aug-SZ2](AlAs_GTH_Q3_Q23/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.052 | 18.173 | 3743668 |
| AlAs_GTH_Q3_Q23 | [aug-TZ1](AlAs_GTH_Q3_Q23/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.111 | 218.453 | 3793626 |
| AlAs_GTH_Q3_Q23 | [aug-TZ2](AlAs_GTH_Q3_Q23/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.156 | 272.640 | 3793627 |
| AlAs_GTH_Q3_Q5 | [aug-DZ1](AlAs_GTH_Q3_Q5/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.943 | 10.227 | 3744182 |
| AlAs_GTH_Q3_Q5 | [aug-DZ2](AlAs_GTH_Q3_Q5/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.011 | 17.253 | 3744183 |
| AlAs_GTH_Q3_Q5 | [aug-SZ2](AlAs_GTH_Q3_Q5/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.070 | 3.340 | 3743282 |
| AlAs_GTH_Q3_Q5 | [aug-TZ1](AlAs_GTH_Q3_Q5/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.059 | 305.280 | 3748942 |
| AlAs_GTH_Q3_Q5 | [aug-TZ2](AlAs_GTH_Q3_Q5/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.093 | 464.320 | 3748883 |
| AlN | [aug-DZ1](AlN/aug-DZ1/) | 12×12×12 | G₀W₀ | 5.736 | 57.240 | 3744170 |
| AlN | [aug-DZ2](AlN/aug-DZ2/) | 12×12×12 | G₀W₀ | 5.781 | 88.480 | 3744171 |
| AlN | [aug-SZ2](AlN/aug-SZ2/) | 12×12×12 | G₀W₀ | 6.476 | 15.800 | 3743276 |
| AlN | [aug-TZ1](AlN/aug-TZ1/) | 12×12×12 | G₀W₀ | 5.770 | 492.373 | 3784648 |
| AlN | [aug-TZ2](AlN/aug-TZ2/) | 12×12×12 | G₀W₀ | 5.846 | 648.107 | 3784649 |
| AlP | [aug-DZ1](AlP/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.354 | 10.240 | 3744136 |
| AlP | [aug-DZ2](AlP/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.358 | 17.173 | 3744137 |
| AlP | [aug-SZ2](AlP/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.282 | 3.080 | 3743263 |
| AlP | [aug-TZ1](AlP/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.464 | 43.013 | 3745627 |
| AlP | [aug-TZ2](AlP/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.518 | 93.573 | 3745628 |
| AlSb_GTH_Q3_Q23 | [aug-DZ1](AlSb_GTH_Q3_Q23/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.585 | 111.680 | 3761033 |
| AlSb_GTH_Q3_Q23 | [aug-DZ2](AlSb_GTH_Q3_Q23/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.650 | 72.960 | 3784654 |
| AlSb_GTH_Q3_Q23 | [aug-SZ2](AlSb_GTH_Q3_Q23/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.765 | 10.847 | 3743669 |
| AlSb_GTH_Q3_Q23 | [aug-TZ1](AlSb_GTH_Q3_Q23/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.697 | 468.160 | 3762558 |
| AlSb_GTH_Q3_Q23 | [aug-TZ2](AlSb_GTH_Q3_Q23/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.768 | 1083.200 | 3762567 |
| AlSb_GTH_Q3_Q5 | [aug-DZ1](AlSb_GTH_Q3_Q5/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.489 | 11.933 | 3744184 |
| AlSb_GTH_Q3_Q5 | [aug-DZ2](AlSb_GTH_Q3_Q5/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.564 | 17.240 | 3744186 |
| AlSb_GTH_Q3_Q5 | [aug-SZ2](AlSb_GTH_Q3_Q5/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.662 | 3.127 | 3743283 |
| AlSb_GTH_Q3_Q5 | [aug-TZ1](AlSb_GTH_Q3_Q5/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.605 | 305.280 | 3748884 |
| AlSb_GTH_Q3_Q5 | [aug-TZ2](AlSb_GTH_Q3_Q5/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.652 | 467.520 | 3748881 |
| Ar | [aug-DZ1](Ar/aug-DZ1/) | 12×12×12 | G₀W₀ | 12.691 | 2.613 | 3744168 |
| Ar | [aug-DZ2](Ar/aug-DZ2/) | 12×12×12 | G₀W₀ | 12.854 | 4.213 | 3744169 |
| Ar | [aug-SZ2](Ar/aug-SZ2/) | 12×12×12 | G₀W₀ | 12.679 | 0.840 | 3743275 |
| Ar | [aug-TZ1](Ar/aug-TZ1/) | 12×12×12 | G₀W₀ | 13.198 | 10.947 | 3747322 |
| Ar | [aug-TZ2](Ar/aug-TZ2/) | 12×12×12 | G₀W₀ | 13.137 | 18.427 | 3747323 |
| BAs | [aug-DZ1](BAs/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.805 | 125.120 | 3759603 |
| BAs | [aug-DZ2](BAs/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.824 | 184.640 | 3759601 |
| BAs | [aug-SZ2](BAs/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.842 | 61.760 | 3759600 |
| BAs | [aug-TZ1](BAs/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.829 | 313.600 | 3759622 |
| BAs | [aug-TZ2](BAs/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.858 | 451.200 | 3759632 |
| BN_cubic | [aug-DZ1](BN_cubic/aug-DZ1/) | 12×12×12 | G₀W₀ | 6.285 | 56.307 | 3744152 |
| BN_cubic | [aug-DZ2](BN_cubic/aug-DZ2/) | 12×12×12 | G₀W₀ | 6.234 | 95.787 | 3744153 |
| BN_cubic | [aug-SZ2](BN_cubic/aug-SZ2/) | 12×12×12 | G₀W₀ | 6.264 | 12.027 | 3743268 |
| BN_cubic | [aug-TZ1](BN_cubic/aug-TZ1/) | 12×12×12 | G₀W₀ | 6.240 | 183.573 | 3747312 |
| BN_cubic | [aug-TZ2](BN_cubic/aug-TZ2/) | 12×12×12 | G₀W₀ | 6.308 | 1401.173 | 3784645 |
| BN_hexagonal_bulk | [aug-DZ1](BN_hexagonal_bulk/aug-DZ1/) | 12×12×12 | G₀W₀ | 5.851 | 68.987 | 3744172 |
| BN_hexagonal_bulk | [aug-DZ2](BN_hexagonal_bulk/aug-DZ2/) | 12×12×12 | G₀W₀ | 5.899 | 103.200 | 3744173 |
| BN_hexagonal_bulk | [aug-SZ2](BN_hexagonal_bulk/aug-SZ2/) | 12×12×12 | G₀W₀ | 5.908 | 21.593 | 3743277 |
| BN_hexagonal_bulk | [aug-TZ1](BN_hexagonal_bulk/aug-TZ1/) | 12×12×12 | G₀W₀ | 5.940 | 578.987 | 3784646 |
| BN_hexagonal_bulk | [aug-TZ2](BN_hexagonal_bulk/aug-TZ2/) | 12×12×12 | G₀W₀ | 5.965 | 776.107 | 3784647 |
| BP | [aug-DZ1](BP/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.032 | 11.587 | 3744164 |
| BP | [aug-DZ2](BP/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.021 | 18.000 | 3744165 |
| BP | [aug-SZ2](BP/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.121 | 3.787 | 3743273 |
| BP | [aug-TZ1](BP/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.047 | 42.827 | 3747318 |
| BP | [aug-TZ2](BP/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.076 | 105.787 | 3747319 |
| C | [aug-DZ1](C/aug-DZ1/) | 12×12×12 | G₀W₀ | 5.563 | 98.333 | 3744130 |
| C | [aug-DZ2](C/aug-DZ2/) | 12×12×12 | G₀W₀ | 5.611 | 150.293 | 3744131 |
| C | [aug-SZ2](C/aug-SZ2/) | 12×12×12 | G₀W₀ | 5.559 | 9.300 | 3743260 |
| C | [aug-TZ1](C/aug-TZ1/) | 12×12×12 | G₀W₀ | 5.568 | 328.560 | 3745622 |
| C | [aug-TZ2](C/aug-TZ2/) | 12×12×12 | G₀W₀ | 5.585 | 1507.840 | 3793113 |
| CdS_wurtzite_GTH_Q20_Q6 | [aug-DZ1](CdS_wurtzite_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.008 | 833.600 | 3759595 |
| CdS_wurtzite_GTH_Q20_Q6 | [aug-DZ2](CdS_wurtzite_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.069 | 2851.520 | 3749379 |
| CdS_wurtzite_GTH_Q20_Q6 | [aug-SZ2](CdS_wurtzite_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.008 | 228.480 | 3759589 |
| CdS_wurtzite_GTH_Q20_Q6 | [aug-TZ1](CdS_wurtzite_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.125 | 1085.440 | 3784620 |
| CdS_wurtzite_GTH_Q20_Q6 | [aug-TZ2](CdS_wurtzite_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.160 | 1290.240 | 3784621 |
| CdS_zincblende_GTH_Q20_Q6 | [aug-DZ1](CdS_zincblende_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.928 | 80.213 | 3784616 |
| CdS_zincblende_GTH_Q20_Q6 | [aug-DZ2](CdS_zincblende_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.989 | 116.907 | 3784617 |
| CdS_zincblende_GTH_Q20_Q6 | [aug-SZ2](CdS_zincblende_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.910 | 16.867 | 3743677 |
| CdS_zincblende_GTH_Q20_Q6 | [aug-TZ1](CdS_zincblende_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.038 | 560.640 | 3784618 |
| CdS_zincblende_GTH_Q20_Q6 | [aug-TZ2](CdS_zincblende_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.073 | 1575.253 | 3784619 |
| CdSe_GTH_Q20_Q6 | [aug-DZ1](CdSe_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.140 | 89.600 | 3784623 |
| CdSe_GTH_Q20_Q6 | [aug-DZ2](CdSe_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.237 | 107.093 | 3784624 |
| CdSe_GTH_Q20_Q6 | [aug-SZ2](CdSe_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.113 | 65.707 | 3784622 |
| CdSe_GTH_Q20_Q6 | [aug-TZ1](CdSe_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.258 | 250.453 | 3784625 |
| CdSe_GTH_Q20_Q6 | [aug-TZ2](CdSe_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.329 | 316.587 | 3784626 |
| CdTe_GTH_Q20_Q6 | [aug-DZ1](CdTe_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.242 | 88.747 | 3784633 |
| CdTe_GTH_Q20_Q6 | [aug-DZ2](CdTe_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.349 | 101.547 | 3784634 |
| CdTe_GTH_Q20_Q6 | [aug-SZ2](CdTe_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.500 | 49.493 | 3784632 |
| CdTe_GTH_Q20_Q6 | [aug-TZ1](CdTe_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.339 | 229.120 | 3784635 |
| CdTe_GTH_Q20_Q6 | [aug-TZ2](CdTe_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.404 | 327.680 | 3784636 |
| GaAs_GTH_Q21_Q5 | [aug-DZ1](GaAs_GTH_Q21_Q5/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.019 | 79.324 | 3740420 |
| GaAs_GTH_Q21_Q5 | [aug-DZ2](GaAs_GTH_Q21_Q5/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.053 | 126.880 | 3744287 |
| GaAs_GTH_Q21_Q5 | [aug-SZ2](GaAs_GTH_Q21_Q5/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.108 | 28.980 | 3743281 |
| GaAs_GTH_Q21_Q5 | [aug-TZ1](GaAs_GTH_Q21_Q5/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.099 | 264.907 | 3740422 |
| GaAs_GTH_Q21_Q5 | [aug-TZ2](GaAs_GTH_Q21_Q5/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.122 | 591.156 | 3740423 |
| GaP_GTH_Q21_Q5 | [aug-DZ1](GaP_GTH_Q21_Q5/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.197 | 79.369 | 3740416 |
| GaP_GTH_Q21_Q5 | [aug-DZ2](GaP_GTH_Q21_Q5/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.175 | 135.360 | 3744286 |
| GaP_GTH_Q21_Q5 | [aug-SZ2](GaP_GTH_Q21_Q5/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.164 | 31.740 | 3743264 |
| GaP_GTH_Q21_Q5 | [aug-TZ1](GaP_GTH_Q21_Q5/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.303 | 324.462 | 3740418 |
| GaP_GTH_Q21_Q5 | [aug-TZ2](GaP_GTH_Q21_Q5/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.337 | 901.778 | 3740419 |
| Ge | [aug-DZ1](Ge/aug-DZ1/) | 12×12×12 | G₀W₀ | 0.472 | 10.427 | 3744178 |
| Ge | [aug-DZ2](Ge/aug-DZ2/) | 12×12×12 | G₀W₀ | 0.558 | 17.360 | 3744179 |
| Ge | [aug-SZ2](Ge/aug-SZ2/) | 12×12×12 | G₀W₀ | 0.539 | 3.200 | 3743280 |
| Ge | [aug-TZ1](Ge/aug-TZ1/) | 12×12×12 | G₀W₀ | 0.555 | 34.133 | 3745629 |
| Ge | [aug-TZ2](Ge/aug-TZ2/) | 12×12×12 | G₀W₀ | 0.593 | 58.293 | 3745630 |
| InP_GTH_Q21_Q5 | [aug-DZ1](InP_GTH_Q21_Q5/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.078 | 125.013 | 3784641 |
| InP_GTH_Q21_Q5 | [aug-DZ2](InP_GTH_Q21_Q5/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.079 | 218.027 | 3784642 |
| InP_GTH_Q21_Q5 | [aug-SZ2](InP_GTH_Q21_Q5/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.188 | 20.687 | 3743671 |
| InP_GTH_Q21_Q5 | [aug-TZ1](InP_GTH_Q21_Q5/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.156 | 504.747 | 3784643 |
| InP_GTH_Q21_Q5 | [aug-TZ2](InP_GTH_Q21_Q5/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.191 | 540.587 | 3784644 |
| LiCl | [aug-DZ1](LiCl/aug-DZ1/) | 12×12×12 | G₀W₀ | 8.920 | 86.400 | 3759593 |
| LiCl | [aug-DZ2](LiCl/aug-DZ2/) | 12×12×12 | G₀W₀ | 8.864 | 151.360 | 3759596 |
| LiCl | [aug-SZ2](LiCl/aug-SZ2/) | 12×12×12 | G₀W₀ | 8.441 | 64.320 | 3759594 |
| LiCl | [aug-TZ1](LiCl/aug-TZ1/) | 12×12×12 | G₀W₀ | 9.040 | 276.800 | 3759581 |
| LiCl | [aug-TZ2](LiCl/aug-TZ2/) | 12×12×12 | G₀W₀ | 9.136 | 452.480 | 3759605 |
| LiF | [aug-DZ1](LiF/aug-DZ1/) | 12×12×12 | G₀W₀ | 13.822 | 65.093 | 3744156 |
| LiF | [aug-DZ2](LiF/aug-DZ2/) | 12×12×12 | G₀W₀ | 13.678 | 100.547 | 3744157 |
| LiF | [aug-SZ2](LiF/aug-SZ2/) | 12×12×12 | G₀W₀ | 14.249 | 42.940 | 3743270 |
| LiF | [aug-TZ1](LiF/aug-TZ1/) | 12×12×12 | G₀W₀ | 13.682 | 198.240 | 3747316 |
| LiF | [aug-TZ2](LiF/aug-TZ2/) | 12×12×12 | G₀W₀ | 13.696 | 779.947 | 3784651 |
| MgO | [aug-DZ1](MgO/aug-DZ1/) | 12×12×12 | G₀W₀ | 7.803 | 115.147 | 3744154 |
| MgO | [aug-DZ2](MgO/aug-DZ2/) | 12×12×12 | G₀W₀ | 7.376 | 227.427 | 3744155 |
| MgO | [aug-SZ2](MgO/aug-SZ2/) | 12×12×12 | G₀W₀ | 7.566 | 86.033 | 3743269 |
| MgO | [aug-TZ1](MgO/aug-TZ1/) | 12×12×12 | G₀W₀ | 7.324 | 392.133 | 3747314 |
| MgO | [aug-TZ2](MgO/aug-TZ2/) | 12×12×12 | G₀W₀ | 7.355 | 936.107 | 3784650 |
| NaCl | [aug-DZ1](NaCl/aug-DZ1/) | 12×12×12 | G₀W₀ | 8.093 | 125.440 | 3759584 |
| NaCl | [aug-DZ2](NaCl/aug-DZ2/) | 12×12×12 | G₀W₀ | 7.926 | 227.200 | 3759587 |
| NaCl | [aug-SZ2](NaCl/aug-SZ2/) | 12×12×12 | G₀W₀ | 7.626 | 88.960 | 3759585 |
| NaCl | [aug-TZ1](NaCl/aug-TZ1/) | 12×12×12 | G₀W₀ | 8.181 | 496.640 | 3759616 |
| NaCl | [aug-TZ2](NaCl/aug-TZ2/) | 12×12×12 | G₀W₀ | 8.242 | 915.840 | 3759627 |
| Ne | [aug-DZ1](Ne/aug-DZ1/) | 12×12×12 | G₀W₀ | 19.106 | 5.320 | 3744166 |
| Ne | [aug-DZ2](Ne/aug-DZ2/) | 12×12×12 | G₀W₀ | 19.038 | 8.480 | 3744167 |
| Ne | [aug-SZ2](Ne/aug-SZ2/) | 12×12×12 | G₀W₀ | 18.612 | 1.613 | 3743274 |
| Ne | [aug-TZ1](Ne/aug-TZ1/) | 12×12×12 | G₀W₀ | 19.443 | 17.640 | 3747320 |
| Ne | [aug-TZ2](Ne/aug-TZ2/) | 12×12×12 | G₀W₀ | 19.399 | 61.933 | 3747321 |
| Si | [aug-DZ1](Si/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.092 | 11.093 | 3744132 |
| Si | [aug-DZ2](Si/aug-DZ2/) | 12×12×12 | G₀W₀ | 1.073 | 18.347 | 3744133 |
| Si | [aug-SZ2](Si/aug-SZ2/) | 12×12×12 | G₀W₀ | 1.131 | 3.720 | 3743261 |
| Si | [aug-TZ1](Si/aug-TZ1/) | 12×12×12 | G₀W₀ | 1.157 | 44.867 | 3745623 |
| Si | [aug-TZ2](Si/aug-TZ2/) | 12×12×12 | G₀W₀ | 1.161 | 99.080 | 3745624 |
| SiC | [aug-DZ1](SiC/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.265 | 37.053 | 3744134 |
| SiC | [aug-DZ2](SiC/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.267 | 55.587 | 3744135 |
| SiC | [aug-SZ2](SiC/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.315 | 5.947 | 3743262 |
| SiC | [aug-TZ1](SiC/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.329 | 136.507 | 3746215 |
| SiC | [aug-TZ2](SiC/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.352 | 459.707 | 3746216 |
| TiO2_anatase | [aug-DZ1](TiO2_anatase/aug-DZ1/) | 12×12×12 | G₀W₀ | 3.620 | 4334.507 | 3772039 |
| TiO2_anatase | [aug-DZ2](TiO2_anatase/aug-DZ2/) | 12×12×12 | G₀W₀ | 3.639 | 11083.520 | 3772040 |
| TiO2_anatase | [aug-SZ2](TiO2_anatase/aug-SZ2/) | 12×12×12 | G₀W₀ | 3.113 | 311.680 | 3769587 |
| TiO2_anatase | [aug-TZ1](TiO2_anatase/aug-TZ1/) | 12×12×12 | G₀W₀ | 3.779 | 3521.707 | 3800797 |
| TiO2_anatase | [aug-TZ2](TiO2_anatase/aug-TZ2/) | 12×12×12 | G₀W₀ | 3.727 | 6615.040 | 3806133 |
| TiO2_rutile | [aug-DZ1](TiO2_rutile/aug-DZ1/) | 12×12×12 | G₀W₀ | 3.271 | 199.147 | 3769581 |
| TiO2_rutile | [aug-DZ2](TiO2_rutile/aug-DZ2/) | 12×12×12 | G₀W₀ | 3.282 | 502.187 | 3769582 |
| TiO2_rutile | [aug-SZ2](TiO2_rutile/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.819 | 73.280 | 3769580 |
| TiO2_rutile | [aug-TZ1](TiO2_rutile/aug-TZ1/) | 12×12×12 | G₀W₀ | 3.443 | 2795.093 | 3771749 |
| TiO2_rutile | [aug-TZ2](TiO2_rutile/aug-TZ2/) | 12×12×12 | G₀W₀ | 3.397 | 6318.933 | 3772038 |
| ZnS_GTH_Q20_Q6 | [aug-DZ1](ZnS_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 3.215 | 99.618 | 3740412 |
| ZnS_GTH_Q20_Q6 | [aug-DZ2](ZnS_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 3.269 | 239.107 | 3744151 |
| ZnS_GTH_Q20_Q6 | [aug-SZ2](ZnS_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 3.338 | 29.633 | 3743267 |
| ZnS_GTH_Q20_Q6 | [aug-TZ1](ZnS_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 3.327 | 275.822 | 3740414 |
| ZnS_GTH_Q20_Q6 | [aug-TZ2](ZnS_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 3.343 | 627.644 | 3740415 |
| ZnSe_GTH_Q20_Q6 | [aug-DZ1](ZnSe_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 2.115 | 102.453 | 3745631 |
| ZnSe_GTH_Q20_Q6 | [aug-DZ2](ZnSe_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.200 | 212.533 | 3745632 |
| ZnSe_GTH_Q20_Q6 | [aug-SZ2](ZnSe_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.219 | 25.427 | 3743288 |
| ZnSe_GTH_Q20_Q6 | [aug-TZ1](ZnSe_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.216 | 378.880 | 3780929 |
| ZnSe_GTH_Q20_Q6 | [aug-TZ2](ZnSe_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.274 | 479.573 | 3780930 |
| ZnTe_GTH_Q20_Q6 | [aug-DZ1](ZnTe_GTH_Q20_Q6/aug-DZ1/) | 12×12×12 | G₀W₀ | 1.949 | 92.413 | 3745633 |
| ZnTe_GTH_Q20_Q6 | [aug-DZ2](ZnTe_GTH_Q20_Q6/aug-DZ2/) | 12×12×12 | G₀W₀ | 2.042 | 190.760 | 3745634 |
| ZnTe_GTH_Q20_Q6 | [aug-SZ2](ZnTe_GTH_Q20_Q6/aug-SZ2/) | 12×12×12 | G₀W₀ | 2.504 | 23.627 | 3743289 |
| ZnTe_GTH_Q20_Q6 | [aug-TZ1](ZnTe_GTH_Q20_Q6/aug-TZ1/) | 12×12×12 | G₀W₀ | 2.040 | 372.480 | 3780931 |
| ZnTe_GTH_Q20_Q6 | [aug-TZ2](ZnTe_GTH_Q20_Q6/aug-TZ2/) | 12×12×12 | G₀W₀ | 2.097 | 510.720 | 3780932 |
