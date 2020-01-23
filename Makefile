REPOSITORY := arquivei/go-pipeline

build:
	docker build -t ${REPOSITORY}:daemon . && \
	docker push ${REPOSITORY}:daemon