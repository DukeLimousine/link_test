# link_test
Simple Script to test all hyperlinks in markdown files in a given directory

To Use:

<your script location>/link_test.sh <your directory>

The script will run through the files and open each link in the directory in chrome, then waits for user input to either continue or quit. It exits after opening all links in the directory & prints them as they go. (You'll probably want to close the windows as you go after confirming if its a valid link). 


Here's some things that would make it better, if this turns out to be worth the time:

More error / input checking
can't handle ampersand markdown
should exit more gracefully than kill -9 
user can enter whether link is good or not and script outputs bad filename/links to file
maybe auto-close the windows also
