FROM debian:testing
RUN apt-get update && apt-get install -y 0install-core --no-install-recommends
ADD trustdb.xml /root/.config/0install.net/injector/trustdb.xml
RUN 0install add rune http://repo.roscidus.com/e/e-core
CMD ["rune"]
