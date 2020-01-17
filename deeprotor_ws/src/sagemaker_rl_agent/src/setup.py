# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
from setuptools import setup, find_packages

# Package meta-data.
NAME = 'sagemaker_rl_agent'
REQUIRES_PYTHON = '>=3.5.0'

setup(
    name=NAME,
    version='0.0.1',
    zip_safe=False,
    packages=find_packages(),
    python_requires=REQUIRES_PYTHON,
    install_requires=[
        'annoy==1.8.3',
        'numpy==1.14.5',
        'PyOpenGL==3.1.0',
        'scikit-image==0.13.0',
        'gym==0.12.0',
        'futures==3.1.1',
        'boto3==1.9.23',
        'kubernetes==7.0.0',
        'minio==4.0.5',
        'pandas==0.22.0',
        'Pillow==6.2.0',
        'matplotlib==2.0.2',
        'pygame==1.9.3',
        'PyYAML==5.1',
        'redis==3.2.1',
        'rospkg==1.1.7',
        'scipy==1.2.2',
        'tensorflow==1.15.0',
        'rl-coach-slim==0.11.1'
    ],
    entry_points = {
        'console_scripts': [
            'run_rollout_rl_agent=markov.rollout_worker:main',
            'run_local_rl_agent=envs.local_worker:main'
        ],
    }
)