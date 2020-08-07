# Temporarily change directory to $HOME to install software
set -xeuo pipefail

pushd .
cd $HOME

# Install Miniconda
if [ "$TRAVIS_OS_NAME" == "osx" ]; then
    # Make OSX md5 mimic md5sum from linux, alias does not work
    sha256sum () {
        command shasum -a 256 "$@"
    }
    MINICONDA=Miniconda3-latest-MacOSX-x86_64.sh
    MINICONDA_HASH=9b9a353fadab6aa82ac0337c367c23ef842f97868dcbb2ff25ec3aa463afc871
else
    MINICONDA=Miniconda3-latest-Linux-x86_64.sh
    MINICONDA_HASH=879457af6a0bf5b34b48c12de31d4df0ee2f06a8e68768e5758c3293b2daf688
fi
MINICONDA_HOME=$HOME/miniconda
wget -q https://repo.continuum.io/miniconda/$MINICONDA
if [[ $MINICONDA_HASH != $(sha256sum $MINICONDA | cut -d ' ' -f 1) ]]; then
    echo "Miniconda MD5 mismatch"
    exit 1
fi
bash $MINICONDA -b -p $MINICONDA_HOME

# Restore original directory
popd
