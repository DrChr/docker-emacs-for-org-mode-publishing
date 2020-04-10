FROM alpine:3.11
MAINTAINER Christian Ridderström "christian.ridderstrom@gmail.com"
WORKDIR /root

RUN apk update               && \
    apk add --no-cache          \
	bash                    \
	ca-certificates         \
	gawk                    \
	git                     \
	emacs                   \
	tree                 && \
        mkdir -p /root/.emacs.d

COPY init.el /root/.emacs.d
COPY initial-setup-for-docker-image.el /tmp

RUN emacs --batch --load /tmp/initial-setup-for-docker-image.el && \
    rm /tmp/initial-setup-for-docker-image.el

CMD [ "emacs" ]
