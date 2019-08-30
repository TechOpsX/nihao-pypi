TRAVIS_PWD = YOUR_PWD_HERE

readme:
	pandoc -s -o README.md README.rst

install-pandoc-macos:
	brew install pandoc

travis-pwd:
	travis encrypt $(TRAVIS_PWD) --add deploy.password --com 

install:
	pip3 install -e . -r requirements/base.txt
	pip3 install -e . -r requirements/test.txt

test:
	tox
