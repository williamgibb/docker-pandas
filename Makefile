RELEASE = 0.2.0

all: test

build:
	docker build -t pandas34:$(RELEASE) .

test:
	docker run pandas34:$(RELEASE) python -c 'import pandas'
	docker run pandas34:$(RELEASE) python -c 'import psycopg2'
	docker run pandas34:$(RELEASE) python -c 'from lxml import etree as et'
	docker run pandas34:$(RELEASE) python -c 'from sklearn import svm'
