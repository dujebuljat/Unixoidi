#!/bin/bash

function slucajni() {
return $(($RANDOM))
}

slucajni
echo $?
