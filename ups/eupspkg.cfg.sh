# EupsPkg config file. Sourced by 'eupspkg'

ssloptions=""
if [[ $(uname) == Darwin ]]; then
    ssloptions="--disable-ssl"
fi

CONFIGURE_OPTIONS="--prefix=$PREFIX --with-apr=$APR_DIR --enable-doxygen-man --libdir=$PREFIX/lib $ssloptions"
MAKE_BUILD_TARGETS="all doxygen-run"

install()
{
	default_install "$@"
	cp -a doc "$PREFIX"
}
