# Project for the Bachelor Thesis on Modelling of Pertubations on Seismocardiography Signals

This is the software project for the bachelor thesis on "Modelling of Perturbations in Seismocardiography Signals". The projects' objective is to provide the means to carry out the four different experiments in the thesis and to enable the the evaluation.

## Abstract of the Thesis

Seismocardiography is a common method for monitoring and preventing cardiovascular diseases, the leading cause of mortality worldwide. At the same time, seismocardiography signals are often contaminated by noise and artefacts, making it difficult to accurately extract the signal morphology and reliably assess the cardiac health. For this reason, this thesis introduces a new approach for denoising seismocardiography signals using fully convolutional autoencoders and proposes a method for modelling motion noise on the signals. In order to investigate not only the capability and suitability of the approach, but also its impact on the use case of extracting an electrocardiogram from seismocardiography signals, several experiments were conducted in the process. Overall, the results favour the use of autoencoders over the traditional wavelet denoising method. Moreover, for noisy signals, the proposed approach allows a significant improvement in the transformability of seismocardiography signals into electrocardiography signals. With such improvements in noise reduction, the method will in the future enable the assessment of cardiac health in a wide range of noisy environments, such as during physical activities, which in turn implies a better applicability of seismocardiography signals.

## Requirements

- Python 3.10
- PyTorch 1.13.1 with CUDA 11.7
- pipenv

Additional requirements are specified within the `Pipfile` and will be installed automatically when either running the `init.sh` script or `pipenv install --python 3.10`.


## Structure

Most of the code and documentation resides in the  `project.ipynb`, which contains the full processing pipeline, including the loading and pre-processing of the datasets, the training of the autoencoders, the evaluation for the four experiments and further utility functions to create visualisations and representations of the results. This project uses `pipenv` to manage package dependencies and virtual environments. This can be configured within the provided `Pipfile`. What is more, a `data` directory will be created during the initialization process containing all the used datasets. The trained models are saved within the `models` directory and results from testing in the `results` directory.

## Configuration

To initialize and configure the project, the provided `init.sh` script may be used. It will download and unpack all the required datasets and store them within the `data` directory. What is more, it will configure the pipenv and install the required packages together with the virtual environment. Note that you should change the source URL for pytorch within the `Pipfile`, depending on the CUDA version you are using of if you need to install the CPU version. Make also sure that you use the current environment, i.e. the created virtual environment by pipenv, when executing the `project.ipynb`.