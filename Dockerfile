FROM alpine:3.11
MAINTAINER Christian Ridderström "christian.ridderstrom@gmail.com"
WORKDIR /root

RUN apk update &&               \
    apk add                     \
	ca-certificates         \
	git                     \
	emacs                   \
	bash                    \
	tree

CMD [ "emacs" ]
