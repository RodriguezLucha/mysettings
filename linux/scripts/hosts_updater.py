#!/usr/bin/python3
from flask import Flask
from flask import request
import re
app = Flask(__name__)


@app.route('/')
def update_hosts():
    """
    update the given hosts IP address in /etc/hosts
    """
    ip = request.args.get('ip')
    hostname = request.args.get('hostname')
    filename = "/etc/hosts"

    old_lines = open(filename).read().splitlines()

    new_lines = [
        "{} {}".format(ip, hostname)
        if re.search(hostname, x, re.IGNORECASE) else x for x in old_lines
    ]

    content = "\n".join(new_lines)

    with open(filename, "w") as text_file:
        text_file.write(content)

    return content


app.run(host='0.0.0.0', port=5333)
