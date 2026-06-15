!/usr/bin/env bash

# Laboratorium 3
# Natalia Bruszewska
# nr indeksu 63347

# 1.1 Introduction to Git Commits
git commit
git commit

# 1.2 Branching in Git
git checkout -b bugFix

# 1.3 Merging in Git
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

# 1.4 Rebase Introduction
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main

# 2.1 Detach yo' HEAD
git checkout C4

# 2.2 Relative Refs 
git checkout bugFix^

# 2.3 Relative Refs 
git checkout HEAD~1
git branch -f main C6
git branch -f bugFix HEAD~1

# 2.4 Reversing Changes in Git
git reset local^
git checkout pushed
git revert pushed

# 3.1 Cherry-pick Intro
git cherry-pick C3 C4 C7

# 3.2 Interactive Rebase Intro
git rebase -i overHere
# W oknie interactive rebase:
# - odznaczam commit C2
# - zostawiam commity C3, C5, C4
# - ustawiam kolejność: C3, potem C5, potem C4
# - zatwierdź rebase

# 4.1 Grabbing Just 1 Commit
git checkout main
git cherry-pick C4

# 4.2 Juggling Commits
git rebase -i HEAD~2
# W pierwszym oknie interactive rebase ustawiam kolejność:
# 1) C3
# 2)C2

git commit --amend

git rebase -i HEAD~2
# Kolejność z powrotem:
# 1) C2''
# 2) C3'

git branch -f main HEAD

# 4.3 Juggling Commits 
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

# 4.4 Git Tags
git tag v0 C1
git tag v1 C2
git checkout v1

# 4.5 Git Describe
git commit

# 5.1 Rebasing over 9000 times
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

# 5.2 Multiple Parents
git branch bugWork HEAD~^2~

# 5.3 Branch Spaghetti
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2

# 1.1 Clone Intro
git clone

# 1.2 Remote Branches
git commit
git checkout o/main
git commit

# 1.3 Git Fetchin'
git fetch

# 1.4 Git Pullin'
git pull

# 1.5 Faking Teamwork
git clone
git fakeTeamwork 2
git commit
git pull

# 1.6 Git Pushin'
git commit
git commit
git push

# 1.7 Diverged History
git clone
git fakeTeamwork
git commit
git pull --rebase
git push

# 1.8 Locked Main
git checkout -b feature
git push origin feature
git branch -f main o/main

# 2.1 Push Main!
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

# 2.2 Merging with remotes
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

# 2.3 Remote Tracking
git checkout -b side o/main
git commit
git pull --rebase
git push

# 2.4 Git push arguments
git push origin main
git push origin foo

# 2.5 Git push arguments -- Expanded!
git push origin main~1:foo
git push origin foo:main

# 2.6 Fetch arguments
git fetch origin C6:main
git fetch origin C3:foo
git checkout foo
git merge main

# 2.7 Source of nothing
git push origin :foo
git fetch origin :bar

# 2.8 Pull arguments
git fetch origin C3:foo
git fetch origin C2:side
git merge foo
git merge side
