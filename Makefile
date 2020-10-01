USERNAME := rust118
VPATH    := src monitoring

.PHONY: build build_comment build_post build_ui build_prometheus

build: build_comment build_post build_ui build_prometheus

build_comment: comment
	docker build -t $(USERNAME)/comment $^
build_post: post-py
	docker build -t $(USERNAME)/post $^
build_ui: ui
	docker build -t $(USERNAME)/ui $^
build_prometheus: prometheus
	docker build -t $(USERNAME)/prometheus $^

.PHONY: push push_comment push_post push_ui push_prometheus

push: push_comment push_post push_ui push_prometheus

push_comment: comment
	docker push $(USERNAME)/comment
push_post: post-py
	docker push $(USERNAME)/post
push_ui: ui
	docker push $(USERNAME)/ui
push_prometheus: prometheus
	docker push $(USERNAME)/prometheus
