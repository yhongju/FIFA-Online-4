FROM denoland/deno:1.25.0

ARG GIT_VERSION
ENV DENO_DEPLOYMENT_ID=${GIT_VERSION}

WORKDIR /app

COPY . .
RUN deno cache main.ts --import-map=import_map.json

EXPOSE 8000

CMD ["run", "-A", "main.ts"]

# To build Dockerimg inside of a Git repo:
# docker build --build-arg GIT_VERSION=$(git rev-parse HEAD) -t my-fresh-app .

# Run Docker container
# docker run -t -i -p 80:8000 fresh-app
