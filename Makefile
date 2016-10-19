RELEASE = 0.1.0

all: test

build:
	docker build -t pandas34:$(RELEASE) .

test:
	docker run pandas34:$(RELEASE) python -c 'import pandas'
	docker run pandas34:$(RELEASE) python -c 'import psycopg2'
