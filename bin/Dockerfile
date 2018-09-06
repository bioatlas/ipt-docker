FROM tomcat:9-jre8-alpine

ENV \ 
	RUNTIME_DEPS="tini" \
	IPT_URL="http://repository.gbif.org/repository/releases/org/gbif/ipt/2.3.6/ipt-2.3.6.war"

RUN \
    apk add --no-cache $RUNTIME_DEPS

RUN rm -rf $CATALINA_HOME/webapps/ROOT && \
	mkdir -p /usr/local/ipt/config $CATALINA_HOME/webapps/ROOT && \
	wget -qO ipt.war $IPT_URL && \
	unzip -d $CATALINA_HOME/webapps/ROOT ipt.war && \
	rm ipt.war
	
RUN echo "/usr/local/ipt" > $CATALINA_HOME/webapps/ROOT/WEB-INF/datadir.location

COPY ./config/ /usr/local/ipt/config/

VOLUME ["/usr/local/ipt"]

ENTRYPOINT ["tini", "--"]

CMD ["catalina.sh", "run"]
