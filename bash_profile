# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# b2g environment
export CC=/opt/gcc-4.6.4/bin/gcc
export CXX=/opt/gcc-4.6.4/bin/g++
export B2G_UPDATER=1
export PRODUCTION=1
export MOZILLA_OFFICIAL=1
export PATH=/opt/make-3.82/bin:$PATH
