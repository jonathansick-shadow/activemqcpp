# EupsPkg config file. Sourced by 'eupspkg'

CONFIGURE_OPTIONS="--prefix=$PREFIX --with-apr=$APR_DIR --with-apr-util=$APR_UTIL_DIR --enable-doxygen-man --libdir=$PREFIX/lib"
MAKE_BUILD_TARGETS="all doxygen-run"

install()
{
	default_install "$@"
	cp -a doc "$PREFIX"
}
