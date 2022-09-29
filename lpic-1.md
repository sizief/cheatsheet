## notes for Linux certificate
Resources:

  -  https://wiki.lpi.org/wiki/LPIC-1_Objectives_V4#Objectives:_Exam_101
  -  https://mega.nz/#F!UjRTxCCT!5-xJ54hH3-NBYpmbEbMrLg
  -  https://www.tuxcademy.org/media/lpic1/
  -  https://devhints.io/bash
  -
## Dictionary
  - exit status: every command has exit status. 0 means evrything is fine, 1 means some kind of error.
    -  `$?` show exit status of last command
  - `[]` means test

## Bash
  - ` expression  && command ` do command if exit status of expression is true
  - ` expression || command ` do command if exit status of expression is false
  - ` exec > file_name ` redirect output to shell

## Processes
- `p -eH --forest` shows hierarchy based tree of pses
- `p -u ali` pses that belongs to ali

## users
`w` who is already online
`w ali` -> what is he doing
`less /etc/passwd` list users
`pkill -KILL -u raj` logout ali

## shared libraries
They are .so or .a files uner /lib. Use ldd to see every binary uses what shared libraries
