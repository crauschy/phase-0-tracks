# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

> A **version control** program allows one to track the progress of a project, review and revert changes, and create back-ups. It's useful for many reasons. It allows many developers to work on a project simultaneously without stepping on each other's toes or undermining the base code (assuming some sort of code review is happening before merging one's version with the master). It allows programmers to build in save points allowing them to revisit (and perhaps reinstate) an earlier version of code if a problem arises.

* What is a branch and why would you use one?

> A **branch** is essentially a copy of a set of folders/files in a repository (a copy of a project). The default branch in any repository is the *master* branch. New branches are used in order to work on writing new features without messing with the master/base code. One would write and make changes to the appropriate branch (one branch per feature so that many programmers can work simultaneously), creating save points along the way, until all the changes are finished and that feature branch is ready to be merged back into the master.

* What is a commit? What makes a good commit message?

> A **commit** is a save point in Git. Because Git doesn't automatically save different versions of files, you must use the command line to *tell* Git to create a save point anytime you want to save some changes to those files. Just like always, it's smart to save early and often! A good commit message is specific and detailed and states what was changed since the last commit. It is best written in the imperative tense (as if you were telling someone to do the thing you just did).

* What is a merge conflict?

> A **merge conflict** occurs when there are competing changes between branches that are being merged that Git cannot resolve without help. Usually, this happens when programmers make different changes to the same line of the same file, or when one person has deleted a file that someone else has been editing. This halts the merging process until the conflict is resolved... like when two people have a disagreement they cannot resolve on their own, so they call on a mediator to help them figure out who's right and wrong. =)