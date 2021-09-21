# dock-rexgen
https://github.com/janstarke/rexgen wasn't installing on MacOS - therefore this dockerized version.

Usage:
```
$ docker build -t rexgen https://github.com/defilercompiler/dock-rexgen.git#main
$ docker run -it rexgen rexgen "t(e)?st-re(gex)?"
tst-re
test-re
tst-regex
test-regex
```
