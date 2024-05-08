# Development Environment Setup Script

This repository contains a script for setting up a basic development environment on Ubuntu-based systems. The script automates the installation of essential tools and software such as Docker, xRDP, OpenSSH-Server, and various development utilities. Additionally, it configures necessary environmental variables.
<ul>
    <li><strong>build-essential</strong>: A meta-package that includes compiler tools like gcc and g++ necessary for compiling software.</li>
    <li><strong>default-jdk</strong>: Installs the default Java Development Kit, which is necessary for compiling and running Java applications.</li>
    <li><strong>libssl-dev</strong>: Development libraries for SSL and TLS protocols, important for secure communication.</li>
    <li><strong>exuberant-ctags</strong>: A utility for indexing source code to aid in faster code navigation in editors.</li>
    <li><strong>ncurses-term</strong>: Provides data files to support different terminal types within ncurses library applications.</li>
    <li><strong>ack-grep</strong>: A text searcher optimized for programmers, better suited for searching large codebases than traditional grep.</li>
    <li><strong>silversearcher-ag</strong>: A very fast text search tool, optimized for source code exploration.</li>
    <li><strong>fontconfig</strong>: A library designed to provide system-wide font configuration, customization, and management.</li>
    <li><strong>imagemagick</strong>: A toolset for editing, creating, or converting bitmap images in a variety of formats.</li>
    <li><strong>libmagickwand-dev</strong>: Developer's library for ImageMagick, allowing direct access to ImageMagick functions from within your own programs.</li>
    <li><strong>software-properties-common</strong>: Provides scripts for managing and modifying software repositories easily.</li>
    <li><strong>git</strong>: A version control system for tracking changes in computer files and coordinating work among multiple people.</li>
    <li><strong>vim-gtk3</strong>: The Vim text editor compiled with GTK3 support, providing a graphical user interface and integration with the clipboard.</li>
    <li><strong>curl</strong>: A command-line tool for getting or sending data using URL syntax, supporting a variety of protocols.</li>
    <li><strong>xrdp</strong>: Implements the Remote Desktop Protocol (RDP) to allow remote desktop sessions to a machine.</li>
    <li><strong>openssh-server</strong>: Provides the OpenSSH daemon, allowing secured remote logins over the network.</li>
    <li><strong>docker-ce</strong>: Docker Community Edition, a platform for developers and sysadmins to develop, ship, and run applications in containers.</li>
</ul>


## Getting Started

### Prerequisites

Ensure you have administrative access (ability to use `sudo`) on your Ubuntu-based system to run the setup script.

### Running the Script

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/gustavobragac/ubuntu-init
Navigate to the directory containing the script:
bash
Copy code
cd ubuntu-init
Make the script executable:
bash
Copy code
chmod +x setup.sh
Run the script with administrative privileges:
bash
Copy code
sudo ./setup.sh
After running the script, you may need to log out and log back in or reboot your system for group changes, particularly Docker permissions, to take effect.

2. Manual Installation Checklist
After running the automated setup script, some software requires manual installation to ensure the latest version or specific configurations are applied. Below is a checklist of such software:

    ```bash
    cd ubuntu-init
    chmod +x setup.sh
    sudo ./setup.sh
    ```

## Manual Installation Checklist

After running the automated setup script, some software requires manual installation to ensure the latest version or specific configurations are applied. Below is a checklist of such software:

- [ ] **Visual Studio Code**: Download and install from the [official site](https://code.visualstudio.com/).
- [ ] **PyCharm**: Choose the appropriate edition (Community or Professional) and download from [JetBrains](https://www.jetbrains.com/pycharm/download/).
- [ ] **asdf**: Follow the installation and usage guide on the [official asdf GitHub page](https://github.com/asdf-vm/asdf). Remember to install plugins for the as needed.
- [ ] **Insomnia**: Download the latest version from [Insomnia's website](https://insomnia.rest/download).
- [ ] **DBeaver**: Obtain the latest release from [DBeaver's official website](https://dbeaver.io/download/).