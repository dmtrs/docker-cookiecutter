docker-cookiecutter
===================

Docker image for [Cookicutter](https://cookiecutter.readthedocs.io/en/1.7.2/README.html).

> A command-line utility that creates projects from cookiecutters (project templates), e.g. creating a Python package project from a Python package project template.

1. Build

```
docker build -t cookiecutter .
```

2. Usage. Example, Use a template to create new project in pwd (project directory with name submitted):

```
docker run --rm -ti -v $(pwd):/usr/src/app/ cookiecutter -o /usr/src/app https://github.com/Kludex/python-template
```
