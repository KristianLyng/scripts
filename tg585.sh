#!/bin/bash

# This is currently under a bash script rather than
# native expect so we can interface with the output

# Change "pass" to your router password

# Call expect and talk to router
expect -c '
   spawn telnet bebox
   expect "Username : "
   send "Administrator\r"
   expect "Password : "
   send "pass\r"
   expect "=>"
   send ":connection stats\r"
   expect "=>"
   send "exit\r"
   expect eof
'
