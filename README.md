# Project for the Bachelor Thesis on Modelling of Pertubations on Seismocardiography Signals

This repository contains the source code for the experiments in the bachelor's thesis on the subject of 'Modelling of pertubations in seismocardiography signals'. TODO: eventually some introduction to the project


## Structure

Most of the code and documentation resides in the `project.ipynb` jupyter notebook. This project uses pipenv to manage package dependencies and virtual environments. This can be configured within the provided `Pipfile`. What is more, a `data/` directory will be created during the initialization process containing all the used datasets. The trained models are saved within the `models/` directory and results from testing in the `results` directory.

## Configuration

To initialize and configure the project, you may use the provided `init.sh` script. It will download and unpack all the required datasets and store them within the `data/` directory. What is more, it will configure the pipenv and install the required packages together with the virtual environment. Note that you should change the source URL for pytorch within the `Pipfile`, depending on the CUDA version you are using of if you need to install the CPU version. Make also sure that you use the current environment, i.e. the one from the virtual environment, when executing the `project.ipynb`.