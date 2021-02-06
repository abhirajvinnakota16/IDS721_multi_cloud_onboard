install:
	pip install --upgrade pip &&\
		pip install -r requirements_aws.txt

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py
	#python -m pytest --nbval notebook.ipynb

all: install lint test