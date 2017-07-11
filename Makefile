BINARY=buildandversioninfo

VERSION=1.0.0
BUILD=`git rev-parse HEAD`

LDFLAGS=-ldflags "-X main.Version=${VERSION} -X main.Build=${BUILD}"

.DEFAULT_GOAL: ${BINARY}

${BINARY}:
	go build ${LDFLAGS} -o ${BINARY} .

install: 
	go install ${LDFLAGS} -o ${BINARY} .

clean: 
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi

.PHONY: clean install
