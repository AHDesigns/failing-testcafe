FROM testcafe/testcafe:1.10.1

USER root
COPY yarn.lock package.json ./

RUN apk add --no-cache -X https://dl-cdn.alpinelinux.org/alpine/v3.9/main python2 make g++
RUN npm i yarn@1.22.0 --no-save
RUN ./node_modules/yarn/bin/yarn

CMD ["yarn", "start"]
