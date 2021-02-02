[hub.docker.com/r/n0thub/python](https://hub.docker.com/r/n0thub/python)

rootless [python](https://hub.docker.com/_/python/) with tini

```
FROM n0thub/python:latest
COPY . .
RUN if [ -f requirements.txt ]; then pip3 install --no-cache-dir -r requirements.txt; fi
CMD ["app.py"]
```
