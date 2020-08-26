#!/bin/sh

PROJECT="razeenotes"
VERSION=`date "+%Y%m%H%M%S"`
IMAGE="quay.io/dalehille/${PROJECT}:${VERSION}"

/usr/local/bin/docker build -t ${IMAGE} ${PWD}
echo "${QUAY_KEY}" | /usr/local/bin/docker login -username ${QUAY_ID} --password-stdin quay.io

/usr/local/bin/docker push ${IMAGE}
echo "${IMAGE}"

# docker run -it -p 80:8080 ${IMAGE}
# echo "docker exec -it /bin/sh;"