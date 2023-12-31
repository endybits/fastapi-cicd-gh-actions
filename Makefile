install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		pip freeze

lint:
	pylint --disable=R,C *.py

test:
	python -m pytest -vv *_test.py

format:
	black *.py app/*.py

all: install lint test format
