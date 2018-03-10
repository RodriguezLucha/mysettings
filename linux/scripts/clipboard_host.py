from flask import Flask
from flask import request
import re
import subprocess
import os
app = Flask(__name__)


def run_cmd(cmd):
    return subprocess.check_output(
        cmd, stderr=subprocess.STDOUT, universal_newlines=True, shell=True)


@app.route('/', methods=["POST"])
def update_clipboard():
    """
    get posted data into /dev/clipboard
    """
    text = request.data.decode('utf-8')

    temp_file = "/home/rodri/.clip.txt"

    with open(temp_file, "w") as text_file:
        text_file.write(text.encode("utf-16"))

    cmd = "clip.exe < {}".format(temp_file)
    run_cmd(cmd)

    return text


app.run(host='0.0.0.0', port=5002)
