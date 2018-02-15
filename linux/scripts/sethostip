#!/usr/bin/python3
import requests
import socket

hostname = socket.gethostname()
ip = socket.gethostbyname(hostname)
url = "http://rudysbvm:5000/?hostname={}&ip={}".format(hostname, ip)

#http://rudysbvm:5000/?hostname=rudy-sb&ip=1.1.1.1
parsed=requests.get(url).text
print(parsed)

