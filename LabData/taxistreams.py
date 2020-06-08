# coding: utf-8

import socket
import time
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(("localhost", 7777))
s.listen(1)
print("Started...")
while(1):
  c, address = s.accept()
  for row in open("/resources/jupyter/labs/BD0211EN/LabData/nyctaxi100.csv"):
    print(row)
    c.send(row.encode())
    time.sleep(0.5)
c.close()
