# Automation Toolkit

A practical learning project focused on PowerShell, Windows automation and small scripts that simplify recurring IT and administrative tasks.

The goal is to explore how simple automation can reduce repetitive manual work, improve structure and build a better understanding of how systems behave behind the user interface.

## Overview

Automation Toolkit is an ongoing project where I build and document small PowerShell scripts for everyday Windows-related tasks.

This is not intended to be a large enterprise automation platform. Instead, it is a focused learning project where I practice scripting, system information gathering, file handling, troubleshooting and technical documentation.

## Why I Built This

I am interested in how technology can be used to make workflows simpler, more reliable and easier to repeat.

Through this project, I want to improve my understanding of:

- PowerShell scripting
- Windows environments
- System administration basics
- Automation thinking
- File handling
- Network information
- Practical problem solving
- Clear technical documentation

- ## Current Scripts

| Script | Description |
|---|---|
| `system-report.ps1` | Collects basic system information from a Windows computer. |
| `disk-health-check.ps1` | Checks available disk space and warns when free space is low. |
| `organize-downloads.ps1` | Sorts files in the Downloads folder by file type. Preview mode by default. |
| `app-inventory.ps1` | Lists installed applications and exports the result to a CSV file. |
| `network-info-report.ps1` | Shows basic network information for troubleshooting and documentation. |

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

### Downloads Organizer

Sorts files in the Downloads folder into category folders based on file type.

The script runs in preview mode by default, so it first shows what it would move before making any changes.

It can sort files into:

- Images
- Documents
- Archives
- Videos
- Other

File:

```text
scripts/organize-downloads.ps1
```

### App Inventory

Lists installed applications from the Windows registry and exports the result to a CSV file.

It can include:

- Application name
- Version
- Publisher
- Install date

File:

```text
scripts/app-inventory.ps1
```

Generated report:

```text
docs/reports/app-inventory.csv
```

### Network Info Report

Shows basic network information that can be useful for troubleshooting and documentation.

It can show:

- Computer name
- Network adapter
- IPv4 address
- Default gateway
- DNS servers

File:

```text
scripts/network-info-report.ps1
```

## Planned Improvements

Future scripts may include:

- Temporary file cleanup
- Simple backup helper
- Startup apps overview
- Folder size reporter
- Basic service status check
- Export reports to both CSV and TXT

- ## Project Structure

```text
automation-toolkit/
├── scripts/
│   ├── system-report.ps1
│   ├── disk-health-check.ps1
│   ├── organize-downloads.ps1
│   ├── app-inventory.ps1
│   └── network-info-report.ps1
├── docs/
│   ├── screenshots/
│   └── reports/
└── README.md
```

## How To Run

Open PowerShell in the project folder.

If PowerShell blocks script execution, allow scripts for the current terminal session only:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

Run the system report:

```powershell
.\scripts\system-report.ps1
```

Run the disk health check:

```powershell
.\scripts\disk-health-check.ps1
```

Run the Downloads organizer in preview mode:

```powershell
.\scripts\organize-downloads.ps1
```

Move files for real:

```powershell
.\scripts\organize-downloads.ps1 -Apply
```

Create an app inventory report:

```powershell
.\scripts\app-inventory.ps1
```

Show network information:

```powershell
.\scripts\network-info-report.ps1
```

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

Example output from `network-info-report.ps1`:

```text
=== Network Info Report ===
Computer name: DESKTOP-12345

Adapter: Wi-Fi
IPv4 address: 192.168.1.25
IPv4 gateway: 192.168.1.1
DNS servers: 192.168.1.1
```

## Status

Ongoing learning project.

This repository will grow over time as I add more scripts, improve existing ones and document what I learn along the way.

## What I Am Practicing

With this project, I am practicing how to:

- Write readable PowerShell scripts
- Work with Windows system information
- Handle files safely
- Think in repeatable workflows
- Use preview modes before mgit pushaking changes
- Collect information for troubleshooting
- Document technical work clearly
- Use scripting as a tool for practical problem solving

## Reflection

For me, programming and automation are tools for creating smarter and more reliable workflows.

This project helps me explore how small technical improvements can save time, reduce repetitive work and make everyday processes easier to manage.

