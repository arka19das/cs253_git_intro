git init
git help add
git help config
git config --global user.name arka19das #username sholdnt have space
git config --global user.email arka19das@gmail.com
git config --list
echo "# cs253_git_intro" >> README.md
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/arka19das/cs253_git_intro.git
git push -u origin main
#…or push an existing repository from the command line
git remote add origin https://github.com/arka19das/cs253_git_intro.git
git branch -M main
git push -u origin main

#git rm --cached <file? 
git status #whichc files are added and not added
git log #status of logs
git add -A #add all files
git restore <file-name> 
#very importqnt command to check difference between two things
git diff
#restore to prev commit
git stash
#whole directory to particular commit
git reset <commit>
--soft
Does not touch the index file or the working tree at all (but resets the head to <commit>, just like all modes do). This leaves all your changed files "Changes to be committed", as git status would put it.

--mixed
Resets the index but not the working tree (i.e., the changed files are preserved but not marked for commit) and reports what has not been updated. This is the default action.

If -N is specified, removed paths are marked as intent-to-add (see git-add[1]).

--hard
Resets the index and working tree. Any changes to tracked files in the working tree since <commit> are discarded.

--merge
Resets the index and updates the files in the working tree that are different between <commit> and HEAD, but keeps those which are different between the index and working tree (i.e. which have changes which have not been added). If a file that is different between <commit> and the index has unstaged changes, reset is aborted.

In other words, --merge does something like a git read-tree -u -m <commit>, but carries forward unmerged index entries.

--keep
Resets index entries and updates files in the working tree that are different between <commit> and HEAD. If a file that is different between <commit> and HEAD has local changes, reset is aborted.

--[no-]recurse-submodules
When the working tree is updated, using --recurse-submodules will also recursively reset the working tree of all active submodules according to the commit recorded in the superproject, also setting the submodules' HEAD to be detached at that commit.


gut checkout <commit-no.>