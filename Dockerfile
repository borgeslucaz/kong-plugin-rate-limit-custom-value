FROM kong:3.3.1-ubuntu
USER root

RUN mkdir -p /usr/local/kong \
	&& chown -R kong:0 /usr/local/kong \
	&& chmod -R g=u /usr/local/kong

COPY *.rockspec /custom-plugins/
WORKDIR /custom-plugins
COPY kong /custom-plugins/kong
RUN luarocks make *.rockspec

USER kong
