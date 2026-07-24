# Automation Toolkit

Automation Toolkit is an ongoing learning project where I explore how PowerShell and scripting can be used to simplify recurring IT and administrative tasks in a Windows environment.

The goal is not to build a large enterprise system, but to practice practical automation, Windows system understanding, scripting and structured problem solving.

This project is part of my continued development within automation, system administration and broader IT.

## Purpose

The purpose of this project is to better understand how small scripts can reduce repetitive manual work and make everyday technical tasks easier to handle.

Through this project, I practice how to collect system information, check system status, organize files and document simple automation workflows.

## What this project shows

This project shows my interest in:

- Automation
- PowerShell
- Windows environments
- Scripting
- System information
- File and disk management
- Practical problem solving
- Self-directed learning
- Technical documentation

## Scripts

### System Report

Collects basic system information from a Windows computer.

It can show information such as:

- Computer name
- Current user
- Windows edition
- Windows version
- OS build number
- Manufacturer
- Model
- Processor
- Installed RAM

File:

```text
scripts/system-report.ps1
Disk Health Check
Checks available disk space and gives a warning if free disk space is low.
It can show information such as:
Drive letter
Free space in GB
Free space in percent
Warning when available disk space is below a defined limit
File:
scripts/disk-health-check.ps1
Planned scripts
This project is ongoing. Future scripts may include:
Downloads folder organizer
Installed applications inventory
Temporary file cleanup
Basic network information report
Simple backup helper
Startup apps overview
How to run
Open PowerShell in the project folder.
Run the system report script:
.\scripts\system-report.ps1
Run the disk health check script:
.\scripts\disk-health-check.ps1
If PowerShell blocks the script, you can allow scripts only for the current terminal session:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
Then run the script again.
Example output
Example output from system-report.ps1:
=== System Report ===
Computer name: DESKTOP-12345
User: Markus
OS: Windows 11 Pro
Version: 23H2
Build: 22631
Manufacturer: Lenovo
Model: ThinkPad
Processor: Intel(R) Core(TM) i7
RAM: 16 GB
Example output from disk-health-check.ps1:
Drive C:
Free space: 128.42 GB
Free percent: 42.18%
Project structure
automation-toolkit/
scripts/
  system-report.ps1
  disk-health-check.ps1
docs/
  screenshots/
README.md
Status
Ongoing learning project.
The project will grow over time as I add more scripts, improve the documentation and test new automation ideas.
What I am learning
With this project I am practicing:
Writing readable PowerShell scripts
Working with Windows system information
Thinking in repeatable workflows
Breaking manual tasks into smaller automated steps
Documenting technical work clearly
Understanding how automation can support real-world IT work
Reflection
For me, programming and automation are tools for creating smarter and more reliable workflows.
This project helps me explore how small technical improvements can save time, reduce repetitive work and improve everyday processes.
