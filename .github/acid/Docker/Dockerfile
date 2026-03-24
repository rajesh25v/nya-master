FROM harbour.en-ind.cloud.wipro/byo-aa55-dev-acid/openjdk-new:21.0.6_7

##Set environment variables

ENV HOME=/usr/app \
        user=acid \
        group=acid
ARG VERSION

## COPY APP

COPY ./nya/nya-master/target/nya-master-${VERSION}.jar  $HOME/nya-master.jar

##RUN springboot application

WORKDIR $HOME
USER $user

ENTRYPOINT ["java", "-jar","nya-master.jar"]