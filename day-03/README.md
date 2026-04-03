# Day 03 - Linux Commands

## Objective

The goal for today is to learn more Linux Essential commands. I currently know about 10 commands, maybe I can know 20 more?

---

## What I Learned

I learnt:

#### Linux Commands

I got to realize there are really a lot of commands, and that these commands are peculiar to certain Operations. Trying to learn all commands at a go feels exhaustative, so I learnt a few and as I deepen my knowledge on Linux and perform more tasks I will get to know more commands.

Few of the Commands I learnt today are:

| Commands | Descripton |
|--------|--------|
| ls | For listing directories  |
| cd| For Navigation purpose to change directories|
| rm | Remove or delete a file|
| cp| Copy a file from one directory to another or the content of a file to another  | 
| touch| Used to create new file(s)|
| cat| It  displays the content of a file|
| wget | to download a file from the internet |
| nano | Opens a text editor to edit a file |
| vi | Open a powerful text editor (Vim)|
| more| View long files one page at a time|
| less| Scroll through a file interactively|
| head| view the first lines of a file (It returns 10 lines by default)|
| tail | View the last lines of a file|
| tac | Displays file contents in reverse order |
| mv | Move or rename files |
| rmdir  | Delete an empty directory |
| mkdir | create new directory |
| grep | Search for a word within a file |
| find | To search for a file within a directory |
| sort | Sort the lines of a file alphabetically or numerically |
| uniq | To remove duplicates |
|  wc | Count lines/words/chars |
| cut | Extract columns by delimiter, often used with .csvs|
| awk | 	Pattern scanning and reporting |
| sed | Stream editor (search/replace) |
| man | To see a command documentation |
| whatis | Returns what a command does |
| ln | links a file to another (Hard or soft) |
| whoami| To know the current user on the terminal | 
| whereis | to know where a file is located in the file system |
| history | To see all recently executed commands |


Some of these commands have variants. Examples:
 
 `cd` , `cd ~`, `cd ..`, `rm -r`

Some common command options
- `-r` - recursive
- `-a` - hidden
- `-l` - long format
- `-h` - human readable
- `-i` - interactive

#### Data Streams

Commands in Linux uses three data streams:

- stdin – input (e.g content of a file)
- stdout – normal output (What you see on the terminal)
- stderr – error output (Errors you get when you run a command or process)

#### Redirection and Pipes

Redirection in Linux is a method of controlling where the input and output of commands go, allowing users to send command outputs to files or take inputs from files instead of the terminal.

| Operator | Function |	Example |
| -------- | -------- |--------|
| > |	Redirect output to a file (overwrite) |	Cat file1.txt > file2.txt |
| >> |	Append output to a file	| echo "more" >> file.txt |
| < |	Read input from a file |	sort < file.txt |
| 2> | Redirects error messages to a file |
| \| |	Pipe output of one command into another |	cat file.txt \| grep "error" |

#### Chaining and Combining Commands

Chaining commands is a technique that allows the execution of multiple commands sequentially or simultaneously through the terminal

- `cmd1 && cmd2`   -  run cmd2 only if cmd1 succeeds
- `cmd1 || cmd2`   -  run cmd2 only if cmd1 fails
- `cmd1; cmd2`     -  run both commands sequentially

#### Environment Variables

Environment variables control how the shell and applications behave. They store technical configuration data such as executable paths, user information, locale settings, and default tools.

| Command |	Description |
|---------|-------------|
| echo $PATH |	Show executable search path |
| export VAR=value | Set a variable	export |
| env | List all environment variables |

#### Linux Commands hacks
- Use `up` and `down` arrow to to recall previous commands
- `sudo !!` - To append sudo to a previous command in case the command requires sudo

---

## What I Built / Practiced

I praticed using all of the newly learnt commands and hacks.

---

## Challenges Faced

- Editing a text file in Nano  and vim Text editor. Seems there was conflict in terminal because I wasn't able to use the nano shortcuts. I will try doing this outside of VScode

---

## Key Takeaways

- There are more commands to learn
- I can use the `man` command to learn about a command options when I'm stuck.


---

## Resources

- https://www.geeksforgeeks.org/linux-unix/linux-tutorial/
- https://github.com/Najeeb-Sulaiman/linux-and-bash-scripting-guide/tree/main

---

## Output

![Praticing Commands](images.image.png)
---
![Praticing Commands](images.image2.png)
---
![Praticing Commands](images.image3.png)
---
![Praticing Commands](images.image4.png)
