# IT Automation & Helpdesk Scripts

A collection of PowerShell and administrative scripts designed to streamline Tier 1/Tier 2 helpdesk workflows, minimize manual data entry, and improve end-user support efficiency.

## 🛠️ Current Projects

### 1. System Information Gatherer (`Get-SystemInfo.ps1`)

**Objective:** Reduce the time spent gathering initial troubleshooting data during support calls. 

**The Problem:**
When end-users experience technical issues in high-stress environments, walking them through the steps to find their IP address or Hostname can be frustrating and time-consuming. 

**The Solution:**
This script automates the discovery process. Running it instantly pulls the necessary system details to begin troubleshooting or initiate a remote desktop session, significantly lowering the average ticket resolution time.

#### Key Features:
* Automatically fetches the machine's **Hostname**.
* Identifies the exact **Windows Operating System** version using CIM instances.
* Pulls the active **IPv4 address** (filtering out loopback adapters) for immediate network identification.

#### Skills Demonstrated:
* PowerShell Scripting & Automation
* Leveraging WMI/CIM cmdlets (`Get-CimInstance`)
* Network configuration querying (`Get-NetIPAddress`)
* IT Support Workflow Optimization

#### How to Use:
1. Download or clone this repository to your local machine.
2. Open PowerShell.
3. Navigate to the folder containing the script.
4. Execute the script by typing: `.\Get-SystemInfo.ps1`
