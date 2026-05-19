# Linux Fundamentals Part 3

## Text Editors

### Nano
Nano is a beginner friendly terminal text editor.

Example:
```bash
nano notes.txt
```

### Important Nano Shortcuts
- CTRL + O -> Save
- CTRL + X -> Exit
- CTRL + K -> Cut line
- CTRL + U -> Paste
- CTRL + W -> Search

---

### Vim
- Advanced text editor
- Very fast
- Highly customizable
- Used by advanced Linux users

---

# Downloading Files

## wget
Used to download files from internet using URL.

Example:
```bash
wget https://example.com/file.txt
```

### Important Learnings
- Linux goes to URL
- Downloads file
- Saves in current directory

---

# SCP (Secure Copy)

Used to securely transfer files between computers using SSH.

### Features
- Uses SSH protocol
- Encryption + authentication
- Secure file transfer

---

## Local -> Remote Transfer

Example:
```bash
scp file.txt ubuntu@192.168.1.30:/home/ubuntu/
```

Meaning:
- file.txt -> our file
- ubuntu@192.168.1.30 -> remote machine
- /home/ubuntu/ -> destination path

---

## Remote -> Local Transfer

Example:
```bash
scp ubuntu@192.168.1.30:/home/ubuntu/notes.txt .
```

Meaning:
- Downloads remote file
- Saves in current directory

---

# Python HTTP Server

## python3 -m http.server
Creates temporary web server from current folder.

Example:
```bash
python3 -m http.server
```

### Output
```bash
Serving HTTP on 0.0.0.0 port 8000
```

### Important Learnings
- Current folder becomes web server
- Files accessible using browser or wget
- Runs on port 8000

---

## Example

Suppose current folder contains:
```bash
flag.txt
hello.txt
```

If IP is:
```bash
192.168.1.5
```

Another machine can download:
```bash
wget http://192.168.1.5:8000/flag.txt
```

---

# Processes in Linux

## Process
Every running program becomes a process.

Examples:
- Chrome
- Python
- Terminal
- VS Code

Each process has unique PID.

---

## PID (Process ID)
Unique number given to every process.

Example:
```bash
Chrome -> PID 1200
Python -> PID 4332
```

---

# ps Command

## ps
Shows running processes.

Example:
```bash
ps
```

Shows:
- PID
- Terminal
- CPU time
- Running command

---

## ps aux
Shows all running processes in system.

Example:
```bash
ps aux
```

### Important Columns
- USER
- PID
- %CPU
- %MEM
- COMMAND

---

# top Command

## top
Linux version of Task Manager.

Example:
```bash
top
```

### Shows
- CPU usage
- RAM usage
- Running processes
- Real-time updates

Exit:
```bash
q
```

---

# Killing Processes

## kill
Stops process using PID.

Example:
```bash
kill 1337
```

---

# Signals

## SIGTERM
Politely stops process.

## SIGKILL
Forcefully kills process.

---

# Foreground & Background Processes

## Foreground Process
Occupies current terminal.

Example:
```bash
python3 -m http.server
```

Terminal waits until process stops.

---

## Background Process
Runs without blocking terminal.

Example:
```bash
python3 -m http.server &
```

### Benefit
- Terminal becomes free
- Can run other commands

---

# CTRL Commands

## CTRL + C
Stops running process completely.

## CTRL + Z
Suspends/pauses process.

---

## fg
Brings background process to foreground.

Example:
```bash
fg
```

---

# Cron Jobs

## Cron
Background service for automatic scheduled tasks.

Examples:
- Daily backup
- Cleanup
- Running scripts automatically

---

## Crontab
Schedule table for cron jobs.

Example:
```bash
crontab -e
```

---

# Cron Job Format

Example Format:
```bash
MIN HOUR DOM MON DOW CMD
```

Meaning:
- MIN -> minute
- HOUR -> hour
- DOM -> day of month
- MON -> month
- DOW -> day of week
- CMD -> command

---

## Example Cron Job

```bash
0 */12 * * * cp -r /home/user/Documents /var/backup
```

Meaning:
- Runs every 12 hours
- Copies Documents folder to backup

---

# Software Repositories

## Repository
Storage/database containing software packages.

Examples:
- Firefox
- Sublime Text
- VS Code

---

# apt Package Manager

## apt
Linux package manager.

Used to:
- Install software
- Update packages
- Remove software
- Upgrade packages

---

## Installing Software

Example:
```bash
sudo apt install firefox
```

### What happens?
1. Linux checks repositories
2. Downloads package
3. Installs software

---

# Adding Repositories

## add-apt-repository
Used to add new repository.

Example:
```bash
sudo add-apt-repository ppa:name
```

---

# GPG Keys

Linux checks authenticity using digital signatures.

Example:
```bash
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```

### Meaning
- Downloads repository key
- Adds trust to Linux
- Linux trusts repository packages

---

# sources.list

Contains repository information.

Locations:
```bash
/etc/apt/sources.list
```

```bash
/etc/apt/sources.list.d/
```

---

# deb Line Meaning

Example:
```bash
deb https://download.sublimetext.com/ apt/stable/
```

Meaning:
- deb -> Debian package repository
- URL -> repository server
- apt/stable/ -> stable packages section

Linux searches packages from this repository.

---

# Updating Package List

After adding repository:
```bash
sudo apt update
```

Meaning:
- Refresh package database
- Linux recognizes new repository

---

# Installing Sublime Text

Example:
```bash
sudo apt install sublime-text
```

---

# Logs in Linux

## Logs
Logs are history/records of system activity.

Stored in:
```bash
/var/log
```

Examples:
- Login attempts
- Errors
- Website requests
- Firewall activity

---

# apache2 Logs

Location:
```bash
cd /var/log/apache2
```

---

## access.log
Stores successful website requests.

---

## error.log
Stores failed requests/errors.

Examples:
- 404 Not Found
- 500 Server Error

---

# .gz Files

Example:
```bash
error.log.2.gz
```

Meaning:
- Old compressed logs
- Saves storage space

---

# Important Learnings
- Nano easier than vim
- wget downloads files from URLs
- SCP securely transfers files
- Python can create temporary web server
- Every running app is process
- PID uniquely identifies process
- top shows real-time system usage
- & runs command in background
- Cron automates tasks
- apt manages software
- Repositories store packages
- Logs help monitor system activity
