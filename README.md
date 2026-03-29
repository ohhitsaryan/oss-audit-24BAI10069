# Open Source Audit (Bash Scripting)

Welcome to my Open Source Audit repository! This project is a collection of Bash scripts designed to explore Linux system administration, package management, file permissions, and log analysis. 

**Student Name:** Aryan Sharma  
**Roll Number:** 24BAI10069  
**Chosen Software:** Firefox  

---

## Dependencies

To run these scripts, you'll need a standard Linux environment. The following utilities should be available on your system:
* **Bash shell** (usually the default on Linux)
* **Standard GNU Coreutils** (`echo`, `ls`, `df`, `du`, `grep`, `awk`, `cut`, `tail`, `cat`, `date`)
* **Package Manager:** The FOSS Package Inspector script uses `rpm`. *Note: If you are running a Debian/Ubuntu-based system, you might need to swap `rpm -q` with `dpkg -l` in Script 2.*
* **Firefox:** Since this is the chosen software for the audit, having it installed will yield the best results for Script 2 and Script 3.

---

## Script Descriptions

Here is a quick breakdown of what each script does:

### 1. System Identity Report (`script1.sh`)
Acts like a welcome screen. It fetches and displays the system's Linux distribution, kernel version, current logged-in user, home directory, and system uptime. It also prints out a short message about the open-source license covering the OS.

### 2. FOSS Package Inspector (`script2.sh`)
Checks if a specific open-source software (Firefox, in this case) is installed on the system. It retrieves the version and license info, and uses a `case` statement to print a short philosophical note about the software's role in the open-source ecosystem.

### 3. Disk and Permission Auditor (`script3.sh`)
Loops through critical system directories (like `/etc`, `/var/log`, `/home`) and generates a clean report showing the disk space used, the owner, and the permissions for each directory. It also includes a custom check for a chosen software's configuration directory.

### 4. Log File Analyzer (`script4.sh`)
A handy tool for system admins. It reads a specified log file line by line and counts how many times a specific keyword (like "error" or "warning") appears. It then spits out a summary and the last 5 matching lines so you can quickly see what went wrong.

### 5. Open Source Manifesto Generator (`script5.sh`)
An interactive script that asks the user three quick questions about their open-source habits and beliefs. It then takes those answers, crafts a personalized "manifesto" paragraph, and saves it to a newly generated text file with today's date.

---

## How to Run the Scripts

Follow these steps to get the scripts running on your local Linux machine:

**Step 1: Clone the repository**
Open your terminal and clone this repo to your local machine:
```bash
git clone [https://github.com/ohhitsaryan/oss-audit-24BAI10069.git]
cd oss-audit-24BAI10069
```

**Step 2: Make the scripts executable**
Before Linux will let you run a script, you have to give it permission to execute. You can do this for all scripts at once:
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**Step 3: Run them!**
Execute each script using `./` followed by the script name. 

*For standard scripts:*
```bash
./script1.sh
./script2.sh
./script3.sh
./script5.sh
```

*For Script 4 (Log Analyzer):*
This script requires you to pass the path to a log file as an argument. You can also pass a custom keyword as a second argument (it defaults to "error" if you leave it blank).
```bash
# Example looking for "error" in the system log:
./script4.sh /var/log/syslog

# Example looking for "warning" in an auth log:
./script4.sh /var/log/auth.log warning
```

