#!/bin/sh
# http://www.fizerkhan.com/blog/posts/What-I-learned-from-other-s-shell-scripts.html

if [ ${#authy_api_key} != 32 ]
then
  red "you have entered a wrong API key"
  return $FAIL
fi