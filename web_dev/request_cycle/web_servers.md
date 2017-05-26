# 9.1 How the Web Works
## Release 1
### What are some of the key design philosophies of the Linux operating system?

Linux is open-source software, which means that the source code is freely available for anyone to download, modify, and redistribute as they see fit. Instead of being maintained by a single entity like a corporation, open-source projects are able to be contributed to by anyone with the skill and desire to write code for them.

Linux design features includes:
* Individual programs that do one thing well, and get chained together
* Storing data in flat text files
* Using shell scripts to provide increased portability between systems
* Encourages shipping decently-functioning code early rather than "perfect" code later


### In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A virtual private server is a virtual machine hosted on the internet, usually at a cost to the user. As opposed to a dedicated physical server, which is an actual server running somewhere for the purpose of serving a single website, a VPS is merely a block of memory on a large server farm that simulates a full-fledged web server.

The advantage of this is that it allows developers to easily set up and tear down web servers, since they can be trivially initialized and destroyed. A VPS hosting plan tends to be less expensive than using a dedicated physical server, and it's easy to scale up or down in terms of resource requirements as needs change. VPSs also provide more control over your virtual server than you might get with other types of hosting, since the siloing minimizes the effects of any accidental catastrophes caused by changes done in root.


### Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

Running as root is unnecessary most of the time, except for administrative purposes. The damage caused by potentially catastrophic mistakes like running rm -rf incorrectly is normally limited to files that the user has permission to modify. Running as root eliminates those permission safeguards. Malicious software can cause a lot more damage if you're running a script as root, because then it has gained full permission to modify every file on the system.

The sudo command is preferable on Ubuntu linux, because this reduces the possible damage caused by running commands as root.
