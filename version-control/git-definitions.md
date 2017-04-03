# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is keeping track of changes to files over time so that multiple people can work on a project at the same time and then review/merge their independent contributions to a single master file, as well as being able to easily roll back to previous iterations of files. In this way catastrophic changes to a code base can be mitigated by having a full history of working code.


* What is a branch and why would you use one?

Branches are like forks in your own repository (though you can also track branches in remote repositories), where you can work on changes separate from the master file before reviewing them and attemping to merge them. You would use branches so that you don't accidentally break functionality in the master file when implementing new features.


* What is a commit? What makes a good commit message?
A commit is a crystallized snapshot of a project that gets added to the project history. This snapshot will never be altered by git unless a coder forces it to be changed. A good commit message should be precise, descriptive and concise.


* What is a merge conflict?

A merge conflict can occur when two people merge changes to the same file, such as modifying the same line in that file or one person deleting the file entirely while the other person is attempting to modify it. Usually git is intelligent about figuring out how to resolve possible conflicts but sometimes situations like the aforementioned require a human to step in and clarify which action is correct to take.