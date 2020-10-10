develop:
	pip install -q -U pip
	pip install -q -r requirements_dev.txt
	pre-commit install
	make precommit

install:
	pip install -q -r requirements.txt

full_install: develop install

precommit:
	git add .
	pre-commit run --all-files
	git add .

black:
	black src tests

isort:
	isort src tests

pylint:
	pylint src tests --min-public-methods 0

mypy:
	mypy src tests --ignore-missing-imports

flake:
	flake8 src tests --ignore=E501

test:
	## pytest tests/*
	echo "No tests set yet"

check: black flake test precommit

fullcheck: pylint mypy check
