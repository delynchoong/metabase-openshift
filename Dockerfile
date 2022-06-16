FROM metabase/metabase

USER root

RUN apk update && \
    apk upgrade && \
    apk add --no-cache npm && \ 
    docker run -d -p 3000:3000 --name metabase metabase/metabase
  
    echo "finished"

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "-c" , "docker run -d -p 3000:3000 --name metabase metabase/metabase & /run.sh"]
