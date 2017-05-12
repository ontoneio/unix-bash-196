#!/bin/bash
touch file1.txt | cp file1.txt $(date +%Y-%m-%d_)file1.txt
#Now let's create a script which will take a filename as
#its first argument and create a dated copy of the file.
#eg. if our file was named file1.txt it would create a copy such as 2017-05-11_file1.txt.
