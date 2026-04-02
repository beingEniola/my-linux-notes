# Day 02 - Linux File System

## Objective

My goal today is to have a solid understanding of Linux file system and do a refresher navigating the file system.

---

## What I Learned

I learnt:

#### What a File System is
A file system is the structure, rules, and methods for how data is organized, stored, accessed, and managed on a storage device. 

Basically a Linux File system is how data is stored on a linux machine. Linux follows the File System Heirarchical standard (FHS) structure. In the FHS, all files and directories appear under the root directory /, even if they are stored on different physical or virtual devices.

Therefore all files and directories in Linux starts from the root directory (/)

#### Linux File System Structure

The Linux directory starts with the root (/), the / directory then has other directories in it. 

- / (Root) - This is the base point, every single file and directory start from here.
- /bin - It contains commands that can be used by all users e.g ls
- /etc - This directory contains configuration files
- /home - It contains user home directories. Usually the home directory for all users asides the admin
- /opt - Holds third-party software or packages not part of the default system installation
- /tmp - Temporary files created during program execution are stored here, and deleted after the program finishes or system reboots.
- /var - Stores variable data such as log files that change frequently during system operation.
-/sbin - Just like /bin it contains linux commands, this commands are typically used for system maintainance by system administator
- /usr - Contain essential user-space programs, libraries, headers, and shared data used by both regular users and administrators. some user binaries not found in /bin or /sbin can be found here.
- /proc - This directory has files that have information on running proceses 
- /dev -  Stores device files that represent hardware devices such as disks and partitions.
- /lib - Contains shared libraries and kernel modules required for applications to run
- /media - Contains subdirectories where removable media devices like USB drives and CDs are mounted.
- /boot - This directory stores all files required for booting the system.
- /mnt - In this directory this is where connected drives are temporarily mounted. This is where their contents become accessible to the system.
- /srv - Stores server specific data related to services provided by the system.
- /

---

## What I Built / Practiced

I praticed navigating the file system/ directories both as a regular user and admin

---

## Challenges Faced

I got confused when I used the cd ~ command and it wouldn't take me to my home directory. Unkown to me /root is the home directory when I'm an admin user. 

---

## Key Takeaways

- / is the linux root directory and it is different from /root directory
- Absolute paths start from /, while relative paths start from the current directory.
- Linux File names are case-sensitive, so File.txt and file.txt are treated as different files.

---

## Resources

- 

---

## Output

(Include links, screenshots, code snippets, or results)
