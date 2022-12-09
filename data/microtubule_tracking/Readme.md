# Sample Data from AMPPNP and ATP-only controls
AMPPNP is a slowly-hydrolyzable ATP analog that keeps kinesin-1 in a high affinity state for microtubules.

The data also includes controls with just ATP without any AMPPNP (or other inhibitor).

## Description of files contained in this .zip file

### .nd2 files
1 second timelapse Fluorescence micrographs acquired on a Nikon Eclipse Ti microscope (Nikon) equipped with a Perfect Focus System (PFS) using a 1.3 PlanApo 60× water immersion objective (Nikon)

#### Filename components
example filename `2015-12-12_Run_1_AMPPNP_row_1_0100_1_023.nd2`:
`Run_1`: Imaging run
`AMPPNP`: Internal ID for AMPPNP
`row_1`: row in the 384-well plate
`0100`: AMPPNP concentration in µM
`1`: replicate number (1-4)
`023`: sequential number, denotes the order in which the data was acquired

### concentrations.csv

AMPPNP concentrations in the order of the files (used to create the concentration axis in the plots and to combine data of replicates with identical concentration)

### config.mat

configuration file for [AutoTipTrack](https://github.com/thawn/AutoTipTrack)

### eval folder

folder containing the raw matlab tracking results

### python_example.ipynb

Jupyter notebook containing python code showing an example of how to work with the matlab data

### summary.mat

matlab file containing the data analyzed by [AutoTipTrack](https://github.com/thawn/AutoTipTrack)