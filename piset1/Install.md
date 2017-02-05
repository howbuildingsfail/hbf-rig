

#Getting Bristol to work

You'll need to rebuild it!


compilation error linked to 

```
unrecognized command line option -msse
unrecognized command line option -mfpmath=sse
```

this is because the floating point math needs to refer to the architecture we are building for. This is probbly why the apt-get version sounds so shit!


Found this link: 

https://www.raspberrypi.org/forums/viewtopic.php?f=31&t=26528


Which suggests alternatives for the RPi - unfortunately, that project uses cmake and we are using automake. 

So: plan is to replace all references to these in the Makefile.am etc. - and run autoconf before configure. Hopefully that'll then compile...

##Files changed: 

### files with '-march' in :

- libbristol/Makefile.am
- libbristol/Makefile.in
- libbristol/Makefile

### files with '-msse' in:


- libbristol/Makefile.am
- libbristol/Makefile.in
- libbristol/Makefile
- bristol/Makefile.am
- bristol/Makefile.in
- bristol/Makefile
- bristol/bristol

### files with '-mfpmath' in:

- libbristol/Makefile.am
- libbristol/Makefile.in
- libbristol/Makefile
- bristol/Makefile.am
- bristol/Makefile.in
- bristol/Makefile
- bristol/bristol

##Strategy: 

From this:

http://stackoverflow.com/questions/2531827/what-are-makefile-am-and-makefile-in

I *think* if I change Makefile.am in the above and then run autoconf, then I'll be able to generate the Makefile.in and Makefiles. I'll also manually change the bristol file. See what happens...

###Result

`automake` gave these warnings: 

```
configure.ac:26: warning: AM_INIT_AUTOMAKE: two- and three-arguments forms are deprecated.  For more info, see:
configure.ac:26: http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_005fINIT_005fAUTOMAKE-invocation
configure.ac:26: error: version mismatch.  This is Automake 1.14.1,
configure.ac:26: but the definition used by this AM_INIT_AUTOMAKE
configure.ac:26: comes from Automake 1.11.6.  You should recreate
configure.ac:26: aclocal.m4 with aclocal and run automake again.
configure.ac:26: warning: The 'AM_PROG_MKDIR_P' macro is deprecated, and its use is discouraged.
configure.ac:26: You should use the Autoconf-provided 'AC_PROG_MKDIR_P' macro instead,
configure.ac:26: and use '$(MKDIR_P)' instead of '$(mkdir_p)'in your Makefile.am files.
```

so I ran `aclocal` as suggested, then `automake` again. Further warnings: 

```
configure.ac:26: warning: AM_INIT_AUTOMAKE: two- and three-arguments forms are deprecated.  For more info, see:
configure.ac:26: http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_005fINIT_005fAUTOMAKE-invocation
configure.ac:31: error: required file './compile' not found
configure.ac:31:   'automake --add-missing' can install 'compile'
```

So I ran `automake --add-missing` - got these warnings: 

```
configure.ac:26: warning: AM_INIT_AUTOMAKE: two- and three-arguments forms are deprecated.  For more info, see:
configure.ac:26: http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_005fINIT_005fAUTOMAKE-invocation
configure.ac:31: installing './compile'
```

Ran `autoconf` just to be sure, and then `configure`

It worked! goodnews!


BUT - bad news - it actually seems to be the audio quality for the ouput sound - need to find another strategy to fix this... :(






