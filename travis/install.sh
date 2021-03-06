MINICONDA_URL="http://repo.continuum.io/miniconda"

platform=$(uname);
if [[ $platform == 'Linux' ]]; then
    MINICONDA_FILE="Miniconda3-latest-Linux-x86_64.sh"
elif [[ $platform == 'Darwin' ]]; then
    MINICONDA_FILE="Miniconda3-latest-MacOSX-x86_64.sh"
fi;

wget -q "${MINICONDA_URL}/${MINICONDA_FILE}"
bash $MINICONDA_FILE -b -p $HOME/miniconda

export PATH=$HOME/miniconda/bin:$PATH

conda update --yes conda
conda install --yes pip conda-build jinja2 anaconda-client
