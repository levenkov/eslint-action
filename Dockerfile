FROM node:10-alpine3.11

RUN apk add -U alpine-sdk python

LABEL com.github.actions.name="ESLint Action"
LABEL com.github.actions.description="Lint your Javascript projects with inline lint error annotations on pull requests."
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="yellow"

RUN npm config set unsafe-perm true

WORKDIR /app

COPY lib /app/lib
ENTRYPOINT ["/app/lib/entrypoint.sh"]
