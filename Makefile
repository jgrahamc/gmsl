include gmsl

GMSL_VERSION := $(subst $(__gmsl_space),.,$(gmsl_version))
PACKAGE := gmsl-$(GMSL_VERSION)
TAR := $(PACKAGE).tar.gz
.PHONY: package
package: $(TAR)

$(TAR): gmsl __gmsl gmsl-tests README index.html changelog.md
	@echo Making $@
	@rm -rf $(PACKAGE)
	@mkdir $(PACKAGE)
	@cp $^ $(PACKAGE)
	@tar -c -z -f $@ $(PACKAGE)
	@rm -rf $(PACKAGE)

.PHONY: test
test:
	@$(MAKE) --no-print-directory -f gmsl-tests
	@$(MAKE) --no-print-directory -f gmsl-tests EXPORT_ALL=1
