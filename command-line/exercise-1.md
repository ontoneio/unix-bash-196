Diving into Unix and Bash #196:

command-line exercises:

Ex 1.2

1. Q: Write a command that prints out the string “hello, world”.
Extra credit: As in Listing 1, do it two different ways, both with and without
using quotation marks.

A: echo "hello world", echo hello world

2. Q: Type the command echo ’hello (with a mismatched single quote),
and then get out of trouble using the technique from Box 4.

A: echo "hello , ctrl+c to escape.

Ex 1.3

3. Q: According to the man page, what are the official
short and long descriptions of echo on your system?

A: Display a line of text.

Ex 1.6

4. Q: Write a command to print the string Use "man echo", including the quotes;
 i.e., take care not to print out Use man echo instead.

A: echo 'Use "man echo"'

5. By running man sleep, figure out how to make the terminal
“sleep” for 5 seconds, and execute the command to do so.

A: sleep 5s

Ex 2.1

6. Q: Using echo and >, make files called line_1.txt and line_2.txt
 containing the first and second lines of Sonnet 1, respectively.

A: echo "From fairest creatures we desire increase," > line_1.txt
   echo "That thereby beauty's Rose might never die," > line_2.txt

7. Q: Replicate the original sonnet_1.txt (containing the first two lines of the sonnet)
by first redirecting the contents of line_1.txt and then appending
the contents of line_2.txt. Call the new file sonnet_1_copy.txt,
and confirm using diff that it’s identical to sonnet_1.txt

A: cat line_1.txt > sonnet_1_copy.txt,
   cat line_2.txt >> sonnet_1_copy.txt
   diff sonnet_1.txt sonnet_1_copy.txt

8. Q: Use cat to combine the contents of line_1.txt and line_2.txt in
reverse order using a single command, yielding the file sonnet_1_reversed.txt.

A: cat line_2.txt line_1.txt > sonnet_1_reversed.txt

Ex 2.2

9. Q: What’s the command to list all the non-hidden files and
directories that start with the letter “s”?

A: ls s*

10. Q: What is the command to list all the non-hidden files that contain
the string “onnet”, long-form by reverse modification time?

A: ls -rtl *onnet*

11. Q: What is the command to list all files (including hidden ones)
by reverse modification time, in long form?

A: ls -artl

Ex 2.3

12. Q: Use the echo command and the redirect operator > to make a
file called foo.txt containing the text “hello, world”.
Then, using the cp command, make a copy of foo.txt called bar.txt.
 Using the diff command, confirm that the contents of both files are the same.

 A: echo "hello, world" > foo.txt,
    cp foo.txt bar.txt,
    diff foo.txt bar.txt

13. Q: By combining the cat command and the redirect operator >, create a
copy of foo.txt called baz.txt without using the cp command.

A: cat foo.txt > baz.txt

14. Q: Create a file called quux.txt containing the contents of foo.txt
 followed by the contents of bar.txt.

A: cat foo.txt bar.txt > quux.txt

Ex 2.4

15. Q: Type the sequence of commands needed to create an empty file
 called foo, rename it to bar, and copy it to baz.

 A: touch foo, mv foo bar, cp bar baz

 16. Q: What is the command to list only the files starting
 with the letter “b”?

 A: ls b*

 17. Q: Remove both bar and baz using a single call to rm.

 A: rm ba*

 Ex 3.1

 18: Q: Use the command curl -I https://www.learnenough.com/
to fetch the HTTP header for the Learn Enough website.
What is the HTTP status code for the address?
How does this differ from the status code for learnenough.com
(without the https://)?

A: Status: 200 OK, learnenough.com Status: 301 moved permanently.

19. Q: Suppose you wanted to list the files and directories
using human-readable byte counts, all, by reverse time-sorted
long-form. What command would you use? Why might this command
be the personal favorite of the author of this tutorial?

A: ls -hartl , Hartl is authors last name.

Ex 3.2

20. Q: Pipe the results of the previous exercise through tail
(with the appropriate options) to print out only the 14 lines
composing Sonnet 1.

A: head -n 18 sonnets.txt | tail -n 14
