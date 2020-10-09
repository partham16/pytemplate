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
	pre-commit run
	git add .

black:
	black src tests

isort:
	isort .

pylint:
	pylint src tests

mypy:
	mypy src tests

flake:
	flake8 src tests

test:
	pytest tests/*

check: black flake test precommit

fullcheck: pylint mypy check
