# Automation Toolkit

A practical learning project focused on PowerShell, Windows automation and small scripts that simplify recurring IT and administrative tasks.

The goal is to explore how simple automation can reduce repetitive manual work, improve structure and build a better understanding of how systems behave behind the user interface.

## Overview

Automation Toolkit is an ongoing project where I build and document small PowerShell scripts for everyday Windows-related tasks.

This is not intended to be a large enterprise automation platform. Instead, it is a focused learning project where I practice scripting, system information gathering, file handling and technical documentation.

## Why I Built This

I am interested in how technology can be used to make workflows simpler, more reliable and easier to repeat.

Through this project, I want to improve my understanding of:

- PowerShell scripting
- Windows environments
- System administration basics
- Automation thinking
- Practical problem solving
- Clear technical documentation

- ## Current Scripts

| Script | Description |
|---|---|
| `system-report.ps1` | Collects basic system information from a Windows computer. |
| `disk-health-check.ps1` | Checks available disk space and warns when free space is low. |

## Script Details

### System Report

Collects basic information about the current Windows machine.

It can show:

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
```

### Disk Health Check

Checks disk usage and displays available storage.

It can show:

- Drive letter
- Free space in GB
- Free space in percent
- Warning when free space is below a defined limit

File:

```text
scripts/disk-health-check.ps1
```

## Planned Improvements

Future scripts may include:

- Downloads folder organizer
- Installed applications inventory
- Temporary file cleanup
- Basic network information report
- Simple backup helper
- Startup apps overview

## Project Structure

```text
automation-toolkit/
├── scripts/
│   ├── system-report.ps1
│   └── disk-health-check.ps1
├── docs/
│   └── screenshots/
└── README.md
```

## How To Run

Open PowerShell in the project folder.

Run the system report:

```powershell
.\scripts\system-report.ps1
```

Run the disk health check:

```powershell
.\scripts\disk-health-check.ps1
```

If PowerShell blocks script execution, allow scripts for the current terminal session only:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Then run the script again.

## Example Output

Example output from `system-report.ps1`:

```text
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
```

Example output from `disk-health-check.ps1`:

```text
Drive C:
Free space: 128.42 GB
Free percent: 42.18%
```

## Status

Ongoing learning project.

This repository will grow over time as I add more scripts, improve existing ones and document what I learn along the way.

## What I Am Practicing

With this project, I am practicing how to:

- Write readable PowerShell scripts
- Work with Windows system information
- Break manual tasks into smaller automated steps
- Think in repeatable workflows
- Document technical work clearly
- Use scripting as a tool for practical problem solving

## Reflection

For me, programming and automation are tools for creating smarter and more reliable workflows.

This project helps me explore how small technical improvements can save time, reduce repetitive work and make everyday processes easier to manage.
