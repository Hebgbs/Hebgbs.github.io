# This script to reside within the git repository for TuxSH's InputRedirectionClient-Qt
# Script requires sudo! Don't forget to chmod +x this first.
echo -e ──────────────────
echo -e "\e[3mInstalling deps...\e[0m"
echo -e ──────────────────
sudo apt-get install -y libqt5gamepad5-dev qtbase5-dev qt5-qmake
echo -e ───────────────────
echo -e "\e[3mBuilding program...\e[0m"
echo -e ───────────────────
export QT_SELECT=5
qmake
make
echo
echo -e "\e[3mFinished!\e[0m"
echo -e "\e[3mRun program with ./InputRedirectionClient-Qt\e[0m"
# EOF
