FROM debian:wheezy
RUN sed -i '/wheezy\s/ s/$/ contrib/' /etc/apt/sources.list
RUN apt-get update && apt-get install -y dosemu
ADD dosemu.tgz /root/.dosemu
RUN mkdir -p /root/.dosemu/drive_c/share/
RUN ln -s /root/.dosemu/drive_c /root/.dosemu/drives/c
CMD dosemu.bin -C
