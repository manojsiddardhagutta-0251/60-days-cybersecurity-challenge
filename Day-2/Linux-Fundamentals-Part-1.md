# Linux Fundamentals Part 1

## What is Linux?
- Linux is open source
- Kali Linux is used for cybersecurity
- Ubuntu is beginner friendly

---

# Basic Commands

## pwd
Shows current working directory.

Example:
bash
pwd


---

## ls
Lists files and folders inside current directory.

Example:
bash
ls
ls Pictures


---

## cd
Used to change directory.

Example:
bash
cd Pictures
cd ..


---

## cat
Displays content inside file.

Example:
bash
cat note.txt


---

## find
Used to search files.

Example:
bash
find --name passwords.txt


---

## grep
Searches content inside files.

Example:
bash
grep "hello" note.txt
grep -R "hello" folder1


---

# Important Learnings
- Linux is case sensitive
- Spaces matter in commands
- grep works on files
- cat does not work on directories

---


# Shell Operators

## &
Runs process in background.

## &&
Runs second command only if first works.

## >
Overwrite file.

## >>
Append without deleting old content.
