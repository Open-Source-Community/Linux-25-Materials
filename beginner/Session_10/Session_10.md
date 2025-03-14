# Linux Session 10 - From Scripts To Streams
## Part one: The Shell Environment
### Environment Variables
- These are system wide variables and are inherited by all system processes and shells.
- Conmonly encountered environment variables
    - $HOME
    - $USER
    - **$PATH**

### PATH Variable
- The $PATH variable is a list of directories where the shell looks for commands
when you type them.
- When you type a command like ls , Bash searches for it in the directories listed in $PATH .
- The current directory ( . ) is not included in $PATH by default.
- That’s why, to run a script in the current directory, you need to type ./script_name.sh instead of just script_name.sh .
**Adding a directory to PATH**
- `export PATH=$PATH:/path/to/your/directory`
- This appends the new path to the existing path, and makes this change available to child processes of the current shell.
- However, this change is temporary. We will see later how to make it persist.

### Aliases
- Aliases are shorcut commands
- Managing aliases 
    - Setting an alias: `alias a='command'`
    - Viewing all aliases: `alias`
    - Showing the value of a specific alias, for eg potato: `alias potato`
- Managing aliases across different shells
    - Write them in an external file, then source it in you shell configuration (.bashrc, .zshrc etc)
- Example aliases
    -An alias to run the last command as sudo:
        `alias pls='sudo $(fc -ln -1)'`
    - An alias to extract a tar archive
        `alias untar='tar -xvf '`


### When to use aliases, functions and scripts?

- Aliases: Whenever you need a shorthand for a command for convenience
    ```bash
    alias hm='history|grep'
    ```
- Functions: Whenever you need to perform logic on arguments

    ```bash
    function mkcd(){ 
        DIR="$*" 
        mkdir $DIR
        cd $DIR
        }
    ```
- Scripts: When your logic is too complex to be contained in a single function
    - Eg: A script to extract a given compressed file/archive depending on the compression/archiving method

### How to make changes to my environment persistent?
Add your changes to the appropriate startup file.
- Aliases and functions:
    - Bash: ~/.bashrc
    - Zsh: ~/.zshrc
- Environment variables like PATH: 
    - Bash: ~/.bash_profile
    - Zsh: ~/.zshenv

--- 

## Part Two: Pipelining and Redirection
- The Unix Philosophy
    - "Do One Thing and Do It Well"


### Standard channels
All processes have access to three standard I/O channels,:

- Standard input (stdin): where a program receives input
- Standard output (stdout): where a program sends its normal output
- Standard error (stderr): where a program sends error messages
 
### File Descriptors
- In Linux/Unix, everything is a file. Regular files, directories, and even devices are files. 

File descriptors are simply numbers that the operating system uses to keep track of open files. Think of them as ID numbers for any open connection - whether it's actually a file, or a device, or any resource a process needs.


 The three standard channels are assigned the first three file descriptors by default. 

|NUMBER|CHANNEL NAME|DESCRIPTION    |DEFAULT CONNECTION|USAGE            |
|------|------------|---------------|------------------|-----------------|
|  0   |stdin       |Standard input |Keyboard          |read only        |
|  1   |stdout      |Standard output|Terminal          |write only       |
|  2   |stderr      |Standard error |Terminal          |write only       |
|  3+  |filename    |Other files    |none              |read and/or write|


### Redirection 
Redirection changes the defaults of how processes get input or output, redirecting them to files.

The beauty of this system is that programs don't need to know whether they're reading from a keyboard or a file, or writing to a screen or a file - they just read from file descriptor 0 and write to file descriptors 1 and 2.

- **Redirecting stdout to files**
    - `command > file` Redirect stdout to overwrite the file
    - `command >> file ` Redirect stdout to append to the file
- **Redirecting stderr to files**
    - `command 2> file` Redirect stderr to overwrite the file
    - `command 2>> file ` Redirect stderr to append to the file
- **Redirecing stdout and stderr together**
    - `command &> file` Redirect stdout to overwrite the file
    - `command &>> file` Redirect stdout to append to the file

- **Discarding output**
    - By redirecting to `/dev/null`

- **Reading from files**
    - `command < file` Uses the file as a source of input (stdin)
    - `command < infile > outfile` Reads stdin from infile and writes stdout to outfile.

### Pipelining 
- A pipe `|` connects stdout of the first command to the stdin of the second command.
- `tee` command copies stdin to stdout while also redirecting its stdout (the original stdin) to the files given as arguments.

### Question!
- What's the difference between redirection and using a pipeline?

### Hands-On
Write a command to count the number of items in a directory and write it to a file named `count.txt`


## Helpful resources for your knowledge
- [Illustrated Redirection Tutorial](https://web.archive.org/web/20230315225157/https://wiki.bash-hackers.org/howto/redirection_tutorial)
- [BeRoot: Environment and Startup Files](https://github.com/Open-Source-Community/BeRoot/tree/main/Environment%20&%20Startup%20Files)
- [BeRoot: Redirecting Output](https://github.com/Open-Source-Community/BeRoot/tree/main/Redirecting%20Output)
