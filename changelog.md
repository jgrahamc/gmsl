# 2025-02-05 v1.2.3 released

Added fold function

# 2024-03-30 v1.2.2 released

Make the strlen and substr functions work with strings containing
$ and # and no longer require $(eval).

# 2024-03-28 v1.2.1 released

Make the tr, uc and lc functions work with strings containing
$ and # and allowed the use of : in character substitution in tr.

# 2022-10-09 v1.2.0 released

Moved from SourceForge to GitHub and made a release. Functionally the
same as v1.1.9.

# 2020-04-03 v1.1.9 released

This version contains a new `gmsl-echo-%` function, fixed
detection of native `and` and `or` and compatibility with GNU Make
4.3

# 2018-05-17 v1.1.8 Released

This release contains an improved `divide` function and a new `modulo`
function.

# 2014-12-22 v1.1.7 Released

`set_is_not_member` is the opposite of `set_is_member` and was
added as a convenience for a GMSL user.

# 2014-04-07 v1.1.5 Released

Adds decimal to other base conversion functions: `dec2hex`, `dec2bin`
and `dec2oct`.

# 2014-04-02 v1.1.4 released

This fixes issue #15 (incompatibility with .EXPORT_ALL_VARIABLES)

# 2012-03-09 v1.1.3 Released

GMSL is now compatible with GNU make 3.82. The `uniq` function has
been updated to use a simpler implementation.

# Prior to v1.1.3 the following appeared in the CVS commit log

2013-01-22: Make the `sequence` function work in both directions.

`$(call sequence,1,5) -> 1 2 3 4 5`
`$(call sequence,5,1) -> 5 4 3 2 1`

2013-01-22: Fix bug #12. set function no longer returns a value.

When the `memoize` function was added the `set` function was changed
to return a value. This causes breakages where `set` is used without
consuming the return value because GNU Make will attempt to parse
the return value.

Restore `set` to the previous functionality where it did not return
any value and add a wrapper function `__gmsl_set` that does return a
value (and calls `set`) which is used by `memoize`.

2012-10-11: Better support for Electric Cloud's emake and Mac OS X

Electric Cloud's emake did not originally support $(eval), but
that has changed with recent versions. This version of GMSL
detects emake and checks the version number so that with recent
versions of emake all GMSL functions are available.

It was not possible to run the test suite on Mac OS X because the
md5sum utility does not exist there (it's called md5 instead). Now
the test suite detects whether md5 or md5sum is available.

2012-05-09: Bump version number in documentation

2012-05-09: Added a new `memoize` function that's used to wrap
potentially slow, repeated function calls

2012-05-04: Bump the version number to 1.1.0

2012-03-09: Make upload work with new SF structure

2010-09-07: Bump version number for 1.0.12

2008-05-21: Add test for Electric Cloud's emake which has
incomplete upport

2007-11-09: Fix bug 1828923

2007-04-10: Added the `strlen` function

2006-11-03: Fix two small bugs: one in the test suite so that is
checks the version number correctly and the definition of
`__gmsl_sixteen` was incorrect

2006-03-10: Change license from GPL to BSD; this is done to make
it easier for people to include GMSL in their Makefiles

2006-01-31: Update documentation for `set_remove`

2005-11-29: Add set handling functions, tests and documentation

2005-11-25: Clean up HTML. Correct error in version number in
documentation

2005-10-28: Update documentation for logical operators

2005-09-28: Update documentation for `uniq` function

2005-02-08: Add link to discussion forum

2005-02-04: Add logo

# 2005-02-03 First release

The first release (v1.0.0) of the GMSL is available.
