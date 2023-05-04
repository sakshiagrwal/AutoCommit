https://docs.github.com/en/codespaces/managing-your-codespaces/managing-gpg-verification-for-github-codespaces

git commit -S -s -m "gpg sign using codespaces"

GIT_TRACE=1 git commit -S -s -m "gpg sign using codespaces" (debug)

If GPG Key listed as _Unverified_ then just restart your codespaces

git switch -c zz

git push --set-upstream origin zz

df -h           = Storage

free -h         = RAM

lscpu           = CPU
