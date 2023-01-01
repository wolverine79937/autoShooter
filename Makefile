package = shooter
version = 0.0.3
tarname = $(package)
distdir = $(tarname)-$(version)

all clean shooter:
	cd src && $(MAKE) $@

dist: $(distdir).tar.gz

$(distdir).tar.gz: $(distdir)
	tar chof - $(distdir) | gzip -9 -c > $@
	rm -rf $(distdir)

$(distdir):
	mkdir -p $(distdir)/src
	cp Makefile $(distdir)
	cp src/Makefile $(distdir)/src
	cp src/*.cpp $(distdir)/src
	cp src/*.hh $(distdir)/src

.PHONE: all clean dist
