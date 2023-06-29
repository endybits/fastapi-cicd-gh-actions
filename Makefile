install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		pip freeze

lint:
	pylint --disable=R,C *.py

test:
	python -m pytest -vv *_test.py

format:
	black *.py /home/runner/work/fastapi-cicd-gh-actions/fastapi-cicd-gh-actions/app/*.py

all: install lint test format
