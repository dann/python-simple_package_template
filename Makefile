# ${repr(project) Makefile
# 

TESTS = \
	simple_package_template \
	tests

TEST_OPTIONS = \
	-v \
	--with-doctest

default: all

all:
	@echo "Nothing to do"

test:
	@(nosetests $(TEST_OPTIONS) $(TESTS))


testxml:
	@(nosetests $(TEST_OPTIONS) --with-xunit $(TESTS) )

profile:
	@(nosetests --with-profile --profile-stats-file=nose.prof $(TESTS)) 
	@(python -c "import hotshot.stats ; stats = hotshot.stats.load('nose.prof') ; stats.sort_stats('time', 'calls') ; stats.print_stats(20)")

coverage:
	@(nosetests --with-coverage $(TESTS)) 

dist:
	python setup.py sdist --formats=bztar

build:
	python setup.py build

clean:
	find . -name '*.pyc' | xargs rm -f
	rm -f nose.prof
	rm -f nosetests.xml

.PHONY: test testxml clean dist build profile
