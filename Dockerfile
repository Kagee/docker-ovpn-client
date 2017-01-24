FROM ubuntu
MAINTAINER Anders Einar Hilden

VOLUME  [ "/data" ]

#EXPOSE 5900

RUN apt -y install openvpn

COPY data/ovpn/ca.crt /etc/openvpn/
COPY data/ovpn/client.conf /etc/openvpn/
COPY data/ovpn/docker1.crt /etc/openvpn/
COPY data/ovpn/docker1.key /etc/openvpn/
COPY data/ovpn/ta.key /etc/openvpn/
COPY data/start-ovpn /usr/bin
RUN chmod +x /usr/bin/start-ovpn
