#!/bin/python3

session = winrm.Session('10.129.11.140:5985', auth=('administrator','admin'))

result = session.run_ps("10.129.11.140")
print (result.std_out)

