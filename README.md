📌 Project Overview
  This repository contains the Capstone Project for the Open Source Software (OSS) course. It features a deep-dive audit of   Python, exploring its history, permissive licensing, and the ethical considerations of its community-led development.     Additionally, it includes a suite of five Bash scripts designed for Linux system administration and automation.

📂 Repository Structure
  1. Report/: Contains the 12–16 page Open Source Audit PDF.

  2. Scripts/: Contains the five functional shell scripts (.sh).

  3. README.md: Project documentation and execution guide (this file).


🛠 Shell Scripts & Functionality
  These scripts were developed and tested on Ubuntu (WSL) to demonstrate core Linux administration competencies:

  1. script1.sh (System Identity): Generates a formatted report of the system kernel, current user, and uptime.

  2. script2.sh (Package Inspector): Uses dpkg and case statements to verify the installation and philosophy of Python3.

  3. script3.sh (Disk Auditor): Loops through system directories to audit disk usage and folder permissions.

  4. script4.sh (Log Analyzer): Performs a line-by-line analysis of system logs to track specific keywords.

  5. script5.sh (Manifesto): An interactive script that captures user input to generate a personalized Open Source Manifesto.

🚀 How to Run
  1. Clone the repository:
  Bash
  git clone https://github.com/eliza25147/python-open-source-audit.git
  cd python-open-source-audit/Scripts

  2. Grant Permissions:
  Bash
  chmod +x *.sh
  
 3.  Execute:
  Bash
  ./script1.sh
⚖️ License
  The contents of this audit and the accompanying scripts are released under the MIT License. Python itself is distributed under the PSF License Agreement.

👤 Author
Name: Elizabeth Maria George

Registration Number: 24BAC10013

Course: Open Source Software (NGMC)
