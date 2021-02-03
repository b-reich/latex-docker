![Docker Pulls](https://img.shields.io/docker/pulls/chillfre4k/latex?style=flat-square)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/chillfre4k/latex/latest?style=flat-square)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/b-reich/latex-docker/ci?style=flat-square)

# latex-docker
A docker container which provide texlive-full and some other need tools.
You can also use this in your CI/CD.

Feel free to create a Issue or PR.

## Usage
```shell
docker pull chillfre4k/latex
#or
docker pull ghcr.io/b-reich/latex:latest

exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data" chillfre4k/latex pdflatex main.tex
#or
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data" ghcr.io/b-reich/latex:latest pdflatex main.tex
```

## Examples
### Gitlab-CI
```yaml
image: chillfre4k/latex:latest

build:
  script:
    - pdflatex thesis.tex
  artifacts:
    paths:
      - "*.pdf"
```
