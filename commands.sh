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

git stash