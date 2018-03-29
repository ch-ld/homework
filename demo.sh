#!/bin/bash

if [ -d $1 ]; then
    echo "$1已存在" && exit 1
else
    mkdir -pv $1/{css,js}

cat << ENDOF >> $1/index.html
<!DOCTYPE>
<title>Hello</title>
<h1>Hi</h1>
ENDOF

echo 'h1{color: red;}' > $1/css/style.css

cat << ENDOF >> $1/js/main.js
var string = "Hello World"
alert(string)
ENDOF
fi

