#!/bin/bash
set -e

if [ -d "$HOME/task_1" ]; then
  echo -e "Hmmm .. I think you have been run this script before, right?\nPlease enter task_1 directory in your home.\nOk I'll help you this time the command is ||sOrRY_TheRE-iS*SOmETHiNg^WR0ng+Yoyooyoyyyyou_CaN.T_seEE_tHis=lEft/now TYR\LaAAAAaaaaaAaTTTTTtTtTtTTTtttTTTTER"
fi

mkdir ~/task_1 &>/dev/null
cd ~/task_1
touch commands.txt

# the TASK
echo -e "Hello New, this is your first task.
        \nI know you think it will be easy but you are wrong.
        \nYou are very WRONG.
        \nIt's very easy :)\nEnjoy ;>
        \nOh, I almost forget it. it's your time now to solve the TASK:
        \nNOTE: Write any commands you use in commands.txt.
        \n\n - First mission to you is making Directory in 'task_1' folder and name it my_dir.
        \n - Second you must create file in 'my_dir' and name it let say hmmm... your name, right (: .
        \n - Edit it and add something like 'I use Linux because it's better than Windows' or anything else (but I recommend the previous one).
        \n - Then create 2 soft (use absolute and relative path) links and one hard to your file name them anything (don't be silly and name the links 'anything' :| )
        \n - Then make directory name it 'links' (I know I'm very creative) in my_dir and put the links inside it.
        \n - Copy the directory 'links' to your home.
        \n - Now list the files in the links directory which in your home.
        \n - Ok know remember the number of hard links to file 'Your Name' and delete the links directory which in home (ok I know it strange why I'll ask you to copy something and delete it but I'm the TASK remeber?).
        \n - Remove the invalid links (we won't need it).
        \n - Make this directory in one command in task_1 'linux/(enter your linux distro)'.   'Hint: use man or --help'
        \nNow good bye ;)
        \nDon't forget to write your commands (Pleeeeeeeeaaaaaaaaaase add   'cd'   commands if you use relative path).
        \n<==============================>\n" >task.txt

echo "First goto task_1 directory in your home and you will know what to do in file called task.txt"
