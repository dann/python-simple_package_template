default: all

all:
	@echo "Nothing to do"

test:
	nosetests

testxml:
	nosetests --with-xunit

profile:
	nosetests --with-profile --profile-stats-file=nose.prof
	python -c "import hotshot.stats ; stats = hotshot.stats.load('nose.prof') ; stats.sort_stats('time', 'calls') ; stats.print_stats(20)"

dist:
	python setup.py sdist --formats=bztar

build:
	python setup.py build

clean:
	find . -name '*.pyc' | xargs rm -f

.PHONY: test testxml clean dist build profile
