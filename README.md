# Delta-Sigma ASIC Development

Team 33's work for the ISRO **Delta-Sigma ASIC Development** problem statement (Inter-IIT Tech Meet 14). It covers modulator modelling with flicker noise and chopping, the decimation filter design (FIR halfband cascade vs. CIC), and the ASIC flow of the final CIC decimator on UMC 65 nm.

## Repository layout

```
.
├── matlab/
│   ├── flicker_filter/     designFlickerFilter.m (1/f noise shaping filter as an ss object), TOP.m
│   └── analysis/           PSD / SNDR scripts: withnoise.m, top.m, highpassntf.mlx, flicker_ss.mlx
├── simulink/               DSM and flicker-noise models (.slx)
├── synthesis/
│   ├── cicfilter_script.tcl   Synopsys Design Compiler script
│   ├── netlists/              gate-level netlists (best case, worst case, post-PnR)
│   ├── reports/               area / timing / power reports (bc & wc corners)
│   └── waveforms/             post-synthesis and post-layout simulation screenshots
└── docs/
    ├── report/digital_latex.tex   LaTeX source of the decimation-filter / HDL chapter
    └── *.pdf                      mid-prep report, filter-design write-up, slides
```

### Simulink models

| Model | Contents |
|---|---|
| `Flicker_Noise.slx` | Discrete-time DSM with a flicker (1/f) noise source |
| `Flicker_Noise_fschop.slx` | The flicker-noise DSM with f<sub>s</sub>/2 chopping |
| `flickertesting.slx` | Flicker-noise test model (idealized ADC quantizer) |
| `secorddiagfs.slx` | Second-order DSM variant |
| `breakdown_FF.slx` | Flicker-filter breakdown (analog filter design and transfer-function estimator blocks) |
| `shashankfile.slx` | Teammate's DSM model |

## Signal chain

1-bit DSM bitstream → **demodulator** (multiplies by (−1)<sup>n</sup> to undo f<sub>s</sub>/2 chopping, gives a 2-bit signed output) → **CIC decimator** (N integrators → ↓R<sub>1</sub> → N combs) → **downsampler** (↓R<sub>2</sub>) → 20-bit output.

The synthesized netlist (`top_all_modules`) uses N = 2, R<sub>1</sub> = 1024, R<sub>2</sub> = 2 (total decimation 2048) and a 20-bit datapath. It runs from a 244.14 ns clock (≈ 4.096 MHz = 2 kHz × 2048).

## Running the analysis

1. Run `matlab/flicker_filter/TOP.m` (or `matlab/analysis/top.m` for a 30 kHz corner). Either one creates `f` and `mag_dB` for the 1/f filter response.
2. Simulate one of the Simulink models so that `out` is in the workspace.
3. Run `matlab/analysis/withnoise.m`. It plots the PSD of the outputs with and without flicker noise, computes the SNDR, and overlays the PSD difference on the filter response.

Keep `designFlickerFilter.m` on the MATLAB path.

## Synthesis results (UMC 65 nm, Synopsys DC)

| Corner | Total cell area (µm²) | Setup slack (ns) | Total power (µW) |
|---|---|---|---|
| Best case (1.10 V, −40 °C) | 2535.12 | 242.48 (met) | 5.76 |
| Worst case (1.08 V, 125 °C) | 2539.44 | 240.71 (met) | 5.82 |

Clock-network power is about 82 % of the total.

## Notes

- The library paths in `cicfilter_script.tcl` are absolute paths on the lab server. Edit them before rerunning synthesis.
- The RTL source (`top_all_modules.v`) is not included yet. Only the synthesized netlists are here.

## Team

Team 33, IIT Guwahati.
