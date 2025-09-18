# Server-Performance-Stats

Server Performance Stats

A simple Bash script to analyze basic server performance statistics. This project can run on any Linux server (or Windows with WSL).

Features

✅ CPU usage – Total CPU usage percentage

✅ Memory usage – Free vs. used memory with percentage

✅ Disk usage – Free vs. used disk space with percentage

✅ Top processes – Top 5 by CPU and memory usage

✅ Extra stats – OS version, uptime, load average, logged-in users, network interfaces, and failed login attempts


Prerequisites

Linux or Windows Subsystem for Linux (WSL)

Bash shell and common tools (awk, df, free, top, etc.)

git installed if you want to clone and contribute

▶How to Run

Clone the repository (or download the script):

git clone https://github.com/dillondm/Server-Performance-Stats.git
cd Server-Performance-Stats


Make the script executable:

chmod +x server-stats.sh


Run the script:

./server-stats.sh

📷 Example Output
========================
Server Performance Stats
========================

OS Version: Ubuntu 24.04.3 LTS
Uptime: up 1 day, 4:32
Load Average: 0.15, 0.10, 0.05
...
Top 5 CPU-consuming processes:
PID   CMD         %CPU
123   nginx       10.5
...

Learning Goals

This project helps you:

Practice Bash scripting and Linux commands

Work with Git and GitHub (cloning, committing, pushing)

Understand basic server monitoring
