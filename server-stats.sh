echo "========================"
echo "server performance stats"
echo "========================"

echo -e "\n OS Version:"
lsb_release -d 2>/dev/null || cat/etc/*release | grep PRETTY_NAME

echo -e "\n uptime:"
uptime -p

echo -e "\n load average:"
uptime | awk -F'load average:''{print $2}'

echo -e "\n👤 Logged in users:"
who

# ----- FAILED LOGIN ATTEMPTS (requires sudo for full info) -----
echo -e "\n🚨 Failed login attempts:"
lastb -n 5 2>/dev/null || echo "Run as root to see failed logins."

# ----- CPU USAGE -----
echo -e "\n⚙️ Total CPU usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print 100 - $8"% used ("$8"% idle)"}'

# ----- MEMORY USAGE -----
echo -e "\n💾 Memory usage:"
free -h | awk 'NR==2{printf "Used: %s | Free: %s | Usage: %.2f%%\n", $3,$4,$3*100/$2 }'

# ----- DISK USAGE -----
echo -e "\n🗄️ Disk usage:"
df -h --total | awk 'END{printf "Used: %s | Free: %s | Usage: %s\n",$3,$4,$5}'

# ----- TOP 5 PROCESSES BY CPU -----
echo -e "\n🔥 Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6

# ----- TOP 5 PROCESSES BY MEMORY -----
echo -e "\n🧠 Top 5 memory-consuming processes:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6

# ----- OPTIONAL: NETWORK USAGE -----
echo -e "\n🌐 Network interfaces:"
ip -br addr show
