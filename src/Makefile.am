AM_CFLAGS = $(VARNISHAPI_CFLAGS) -Wall -Werror
AM_LDFLAGS = $(VARNISHAPI_LIBS) $(VMOD_LDFLAGS)

vmod_LTLIBRARIES = libvmod_cachehits.la

libvmod_cachehits_la_SOURCES = \
	vmod_cachehits.c

nodist_libvmod_cachehits_la_SOURCES = \
	vcc_cachehits_if.c \
	vcc_cachehits_if.h

dist_man_MANS = vmod_cachehits.3

@BUILD_VMOD_CACHEHITS@

AM_TESTS_ENVIRONMENT = \
	PATH="$(VMOD_TEST_PATH)" \
	LD_LIBRARY_PATH="$(VARNISH_LIBRARY_PATH)"
TEST_EXTENSIONS = .vtc
VTC_LOG_COMPILER = varnishtest -v
AM_VTC_LOG_FLAGS = -Dvmod_cachehits="$(VMOD_CACHEHITS)"

TESTS = @VMOD_TESTS@

EXTRA_DIST = \
	vmod_cachehits.vcc \
	$(VMOD_TESTS)
