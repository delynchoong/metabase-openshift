FROM metabase/metabase

USER root

RUN apk update && \
    apk upgrade && \
    apk add --no-cache npm && \ 
  
    echo "finished"

USER metabase

EXPOSE 3000


