# Simple bypass for computers where CMD is blocked
A simple file which bypasses the CMD block on, at least, my school's 
computers. 

I take no responsibility for any misuse, abuse, or whatever you do that 
may get you into trouble for using this: don't use it if you don't know 
that you are allowed to. Any such usage is on your own risk.

## How it works, line by line
1.```
@echo off
```

Hides the commands run by the script from the user to make it tidier and less annoying to use.

2.
```
:A
```

Adds the label ```A``` for use later in the script.

3.
```
set /P x="%cd%>"
```

Prints out the current path (given to us by the variable %cd%, where cd stands for Current Directory, I believe) along with a > to make it look like the regular Windows command prompt. It then waits for the user to type something, and once they press enter it is put in the variable x (which we later will access using %x%).

And yes, you could change this part to theme CMD to look like bash, zsh, ash, or whatever to some degree.

4.
```
%x%
```

Take the user's input (which we put in the variable x in the previous step) and run it.

5.
```
goto A
```

Restart the whole process so that the user can run more than one command without CMD exiting on them.

... and that's it!