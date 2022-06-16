FROM metabase/metabase

USER root

RUN apk update && \
    apk upgrade && \
    apk add --no-cache npm && \ 
  
    echo "finished"

EXPOSE 3000

docker run -d -p 3000:3000 --name metabase metabase/metabase
