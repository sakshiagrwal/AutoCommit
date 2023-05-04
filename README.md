[Managing GPG verification for GitHub Codespaces](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-gpg-verification-for-github-codespaces)

```
git commit -S -m "gpg sign using codespaces"

# Debug
GIT_TRACE=1 git commit -S -m "gpg sign using codespaces"
```

If GPG Key listed as **Unverified** then you will need to stop and restart the codespace. 

```
# Switch Branches
git switch -c new-branch

# Push
git push --set-upstream origin new-branch

# Storage
df -h

# RAM
free -h

# CPU
lscpu
```
