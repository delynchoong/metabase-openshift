FROM metabase/metabase

USER root

RUN apk update && \
    apk upgrade && \
    apk add --no-cache npm && \ 
  
    echo "finished"

EXPOSE 3000

RUN metabase/metabase
