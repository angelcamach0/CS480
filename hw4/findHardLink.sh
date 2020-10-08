#!/bin/bash
echo "Which directory do you wish to search? "
read udirectory
for i in $udirectory;do echo "The Number of inodes $i is $(find $i | wc -l | ls -la )";done