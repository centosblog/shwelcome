shwelcome
============

This script prints a friendly welcome message upon a shell login.

It uses a modular approach which allows you to customize/create your own modules. By default it includes the following modules:

* cowsayfortune: prints fortune inside a cowsay bubble
* summary: prints general system info/welcome message
* taskwarrior: prints current task list

### Example Output
    
    Welcome to management.XXXXXXXXX.com, root.
    You are running /bin/zsh shell on CentOS release 6.4 (Final) x86_64
    
    Running kernel: Linux 2.6.32-358.xx.y.el6.x86_64
    Uptime: 691:33:52
    Server date: Sat Sep 14 10:59:50 EST 2013
    Process count: 108
    Load average (1 min): 0.15
    Established connections: 2
    CSF blocked IPs: 215
    Users logged in:
    root
    
    [task list]
    
    ID Project Pri Due Active Age   Description
     3         H               1 wk Task 1
     2                        4 wks Task 2
     1                        5 wks Task 3

    3 tasks

     ___________________________________________________
    < You are the only person to ever get this message. >
     ---------------------------------------------------
           \    ____
            \  /    \
              | ^__^ |
              | (**) |______
              | (__) |      )\/\
               \____/|----w |
                    ||     ||
    
                     Moofasa


### Supported systems

This has been tested on CentOS 6 and OpenSUSE 12, using both BASH and ZSH shells. I'm quite certain it will work on other systems that have BASH 4+ or ZSH 4+ installed.


### Installation

1. Clone this repo to your preferred directory (eg: /opt)

    `cd /opt && git clone https://github.com/centosblog/shwelcome`

2. Ensure shwelcome/shwelcome.sh is executable

    `chmod +x /opt/shwelcome/shwelcome.sh`

3. Individually enable it for your user

    Add `/opt/shwelcome/shwelcome.sh` to your profile file, eg: `~/.bash_profile` (BASH) or `~/.zshrc` (ZSH)

4. (Optional) Enable it globally for all users

    Add `/opt/shwelcome/shwelcome.sh` to your shell's default profile, eg: `/etc/zshrc` (ZSH)


### Installation of Dependencies

1. Enable the EPEL repo (http://fedoraproject.org/wiki/EPEL#How_can_I_use_these_extra_packages.3F)

2. Install fortune, cowsay and taskwarrior:

    `yum install fortune-mod cowsay task`


### File Tree

    .
    ├── includes
    │   └── includes.sh
    ├── modules
    │   ├── cowsayfortune
    │   ├── summary
    │   └── taskwarrior
    ├── README.md
    └── shwelcome.sh


### Disclaimer

I'm not a programmer, but I do like to make things. Please use this at your own risk.


### License

The MIT License (MIT)

Copyright (c) 2013 Curtis K (www.centosblog.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
