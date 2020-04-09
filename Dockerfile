from alpine:3.11

run apk update && apk add \
	git \
	emacs \
	bash \
	tree
