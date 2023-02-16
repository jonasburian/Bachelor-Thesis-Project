# Software Project for the Bachelor Thesis on the Subject of "Modelling of Pertubations on Seismocardiography Signals"

This is the software project for the bachelor thesis on "Modelling of Perturbations in Seismocardiography Signals". The aim of this project is to provide the means to carry out the four different experiments of the thesis and to enable the evaluation.

## Abstract of the Thesis

Seismocardiography is a common method for monitoring and preventing cardiovascular diseases, the leading cause of mortality worldwide. At the same time, seismocardiography signals are often contaminated by noise and artefacts, making it difficult to accurately extract the signal morphology and reliably assess cardiac health. For this reason, this thesis introduces a new approach for denoising seismocardiography signals using fully convolutional autoencoders, with a particular focus on proposing a method for modelling motion noise on the signals. A number of experiments were carried out to investigate not only the capability and suitability of the denoising approach and the applicability of the noise model, but also its impact on the use case of extracting an electrocardiogram from seismocardiography signals. Overall, the results favour the use of autoencoders and the proposed approach allows for a significant improvement in the transformability of seismocardiography signals into electrocardiography signals in the presence of noisy signals. With such improvements in noise reduction, the method together with the proposed noise model will in the future enable the assessment of cardiac health in a wide range of noisy environments, such as during physical activity, which in turn implies a better applicability of seismocardiography signals.

## Structure

Most of the code and documentation resides in `project.ipynb`, which contains the complete processing pipeline, including the loading and pre-processing of the datasets, the training of the autoencoders, the evaluation for the four experiments, and other utilities for creating visualisations and plots of the results. This project uses `pipenv` to manage package dependencies and virtual environments, which can be configured within the provided `Pipfile`. In addition, a `data` directory is created during the initialisation process, containing all the datasets used. The trained models are stored in the `models` directory and the test results in the `results` directory.

Specifically, the trained autoencoder models are stored in three subfolders of the `models` directory, namely `motion`, `wgn` and `ecg`, where the autoencoders were trained on the motion-based noise model, the WGN model and for the SCG/ECG transformation task, respectively. The model files are always named in the same way: The name starts with the model name (`model_1`, `model_2` or `model_ecg`), then continues with the noise model used, i.e. `wgn1` to `wgn4`, which also applies to the WGN part of the motion noise model, and ends with some optional information for more specific models. For example, the ending `bandpass` indicates that the model was trained on the bandpass filtered training data, while `cebs_full` and `cebs_omitted` stand for training on the full CEBS dataset with no training set and training on the same dataset but without subjects one and two. For AE2 trained for the SCG/ECG transformation (here `model_ecg`), no noise model is specified. Instead, the name includes the normalisation applied to the ECG and/or SCG data. Specifically, `both_norm` indicates that both ECG and SCG samples were normalised, `ecg_norm` and `scg_norm` that only ECG or SCG samples were normalised, and `wo_norm` that no normalisation was applied. In addition to the trained models, the training and validation losses for each trained model are included as .csv files with the same filename but with `loss` at the beginning instead of `model`.

## Requirements

- Python 3.10
- PyTorch 1.13.1 with optional CUDA 11.7 (or another compatible version of CUDA)
- pipenv

Additional requirements are specified in the `Pipfile` and are automatically installed when running either the `init.sh` script or `pipenv install --python 3.10`.

## Configuration

To initialise and configure the project, the provided `init.sh` script can be used. It will download and unpack all the required datasets and place them in the `data` directory. In addition, it will configure pipenv and install the required packages along with the virtual environment. Note that you should change the source URL and version for pytorch within the `pipfile` depending on the CUDA version you are using or if you need to install the CPU version. Also make sure to use the correct environment, i.e. the virtual environment created by pipenv, when running `project.ipynb`.