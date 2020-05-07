#/bin/sh
set -e
set -u
cd
mkdir .config
wget https://raw.github.com/srea/dotFiles/master/.setup.sh && chmod u+x ./.setup.sh && ./.setup.sh
