
export CONDA_TARGET_DIR=/p/project/cesmtst/hoeflich1/miniconda3

if [ "${1}" == "install" ]; then

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -f -p ${CONDA_TARGET_DIR}
${CONDA_TARGET_DIR}/bin/conda install -n base -c conda-forge jupyterlab dask distributed bokeh dask-jobqueue
${CONDA_TARGET_DIR}/bin/conda clean --all --yes

else

source ${CONDA_TARGET_DIR}/etc/profile.d/conda.sh
conda activate base && \
jupyter lab --ip=$HOSTNAME --no-browser

fi

