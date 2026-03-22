# 🚀 Automated Deployment Guide

This theme includes **one-click deploy scripts** for Windows users!

## 📋 Prerequisites

| Tool | Why | Download |
|------|-----|----------|
| **Ruby + Jekyll** | Build the site | [rubyinstaller.org](https://rubyinstaller.org/) |
| **WinSCP** | Upload via FTP | [winscp.net](https://winscp.net/) |
| **Git** (optional) | Version control | [git-scm.com](https://git-scm.com/) |

---

## ⚙️ Setup Instructions

### Step 1: Install WinSCP

1.  Download from [winscp.net](https://winscp.net/)
2.  Install with default settings
3.  Open WinSCP

### Step 2: Save Your FTP Session

1.  Click **New Site**
2.  Enter your host details:
    -   **Host name:** `your-domain.com` or `ftp.your-domain.com`
    -   **Username:** Your FTP username
    -   **Password:** Your FTP password
3.  Click **Save**
4.  Give it a name (e.g., `MyWebsite`)
5.  **Check "Save password"** (encrypted locally)

### Step 3: Configure `upload.bat`

1.  Copy `upload.bat.example` to `upload.bat`
2.  Open `upload.bat` in a text editor
3.  Update these lines:

```batch
set SESSION_NAME=MyWebsite        ← Your saved WinSCP session name
set REMOTE_PATH=/public_html/     ← Your server's public folder