# Linux Log Analyzer Tool

## Overview

The **Linux Log Analyzer Tool** is a simple shell script that analyzes application logs and provides a quick summary of errors and warnings.
In real production environments, DevOps and SRE engineers often need to analyze large log files quickly to identify issues affecting applications. This project demonstrates basic log investigation techniques using common Linux commands.

---

## Features

This script performs the following log analysis tasks:
* Counts the total number of **ERROR** entries in the log file
* Counts the total number of **WARNING** entries
* Displays the **most recent error**
* Shows **frequency of error messages**
* Generates a quick **log analysis report**

---

## Technologies Used

### Linux Commands

* `grep`
* `sort`
* `uniq`
* `tail`

### Shell Scripting

* Bash scripting
* File input handling
* Command pipelines

---

## Project Structure

```
linux-log-analyzer
│
├── analyze_logs.sh   # Shell script for log analysis
├── app.log           # Sample log file
└── README.md         # Project documentation
```
---

## Sample Log File

Example log entries used for testing:

```
INFO Application started
INFO User Login Access
INFO User Login Success
ERROR Database connection failed
WARNING High Memory Usage
ERROR API Timeout
```
---

## Script Explanation

The script analyzes the log file using standard Linux commands.

### Count total errors
```
grep -c "ERROR" app.log
```

Counts the number of lines containing the word **ERROR**.

---

### Count total warnings
```
grep -c "WARNING" app.log
```

Counts warning messages.

---

### Show most recent error
```
grep "ERROR" app.log | tail -1
```

Displays the latest error recorded in the log.

---

### Show most frequent errors
```
grep "ERROR" app.log | sort | uniq -c
```

Groups similar errors and shows how many times each occurred.

---

## How to Run the Script

### Step 1 — Make the script executable
```
chmod +x analyze_logs.sh
```

### Step 2 — Run the script
```
./analyze_logs.sh
```

---

## Example Output
```
Log Analysis Report
===================

Total Errors: 2
Total Warnings: 1

Most Recent Error:
ERROR API timeout

Most Frequent Errors:
1 ERROR API timeout
1 ERROR Database connection failed
```
---

## Learning Outcomes

This project helps practice:

* Linux log investigation
* Using `grep` for log filtering
* Command pipelines
* Bash scripting basics
* GitHub project documentation

These skills are commonly used by DevOps Engineers, Cloud Engineers, and Site Reliability Engineers (SRE) when troubleshooting production systems.

---
**Possible Improvements**

Future enhancements could include:

 * Support for multiple log files
 * Date-based log filtering
 * Email alerts for critical errors
 * Integration with monitoring systems
   
