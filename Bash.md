## BASH

### variables
VAR=my name
echo $VAR
echo "$VAR is my name"
touch "${VAR}_file"

### export and source
mark vars to rwady to shared with child processes.
$NAME=ali
export $ali
bash
echo $VAR -> ali

. ./mybash.sh -> change some env inside the bash file
this will change the env in current bash. this is sourcing

### loop
for i in ali 1 2 anything
do
echo $i
done

while [ "$INPUT_STRING" != "bye" ]
do
end

while :
do
end

### test
if [ 1 = 1 ] 
then
echo my name
fi

```if [ "$X" -lt "0" ]
then
  echo "X is less than zero"
fi
if [ "$X" -gt "0" ]; then
  echo "X is more than zero"
fi
[ "$X" -le "0" ] && \
      echo "X is less than or equal to  zero"
[ "$X" -ge "0" ] && \
      echo "X is more than or equal to zero"
[ "$X" = "0" ] && \
      echo "X is the string or number \"0\""
[ "$X" = "hello" ] && \
      echo "X matches the string \"hello\""
[ "$X" != "hello" ] && \
      echo "X is not the string \"hello\""
[ -n "$X" ] && \
      echo "X is of nonzero length"
[ -f "$X" ] && \
      echo "X is the path of a real file" || \
      echo "No such file: $X"
[ -x "$X" ] && \
      echo "X is the path of an executable file"
[ "$X" -nt "/etc/passwd" ] && \
      echo "X is a file which is newer than /etc/passwd"
`