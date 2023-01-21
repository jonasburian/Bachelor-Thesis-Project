#!/usr/bin/env bash

DATA='data/'

# CEBS dataset
CEBS=$DATA'CEBS/'
mkdir -p $CEBS

wget -cNP $CEBS https://physionet.org/static/published-projects/cebsdb/combined-measurement-of-ecg-breathing-and-seismocardiograms-1.0.0.zip -O $CEBS'data.zip'
unzip -jn $CEBS'data.zip' 'files/*' -d $CEBS
rm $CEBS'data.zip'

# ECMS dataset
ECMS=$DATA'ECMS/'
mkdir -p $ECMS

wget -cNP $ECMS https://zenodo.org/record/5279448/files/Raw_Recordings.zip?download=1 -O $ECMS'data.zip'
unzip -jn $ECMS'data.zip' 'Raw_Recordings/*' -d $ECMS
rm $ECMS'data.zip'

# IEEE dataset
IEEE=$DATA'IEEE/'
mkdir -p $IEEE

wget -cNP $IEEE https://cloud-ext.igd.fraunhofer.de/s/gEK9yJ8F4coiCTg/download/IEEE.zip -O $IEEE'data.zip'
unzip -jn $IEEE'data.zip' 'IEEE DATAPort/data/*' -d $IEEE
rm $IEEE'data.zip'

# ACC Noise dataset
ACC=$DATA'NOISE_ACC/'
mkdir -p $ACC

wget -cNP $ACC https://archive.ics.uci.edu/ml/machine-learning-databases/00287/Activity%20Recognition%20from%20Single%20Chest-Mounted%20Accelerometer.zip -O $ACC'data.zip'
unzip -jn $ACC'data.zip' 'Activity Recognition from Single Chest-Mounted Accelerometer/*' -d $ACC
rm $ACC'data.zip'

# Configure virtual env
# pipenv install --python 3.10