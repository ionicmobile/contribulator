# Contribulator

### Been here?

1. You have a private repo that core members have access to
1. You have a private repo forked from that repo that contributors have access to
1. You constantly have to update the contrib repo's master branch with the core's master branch.

### Publish master from one repo to another.

```
contribulator publish https://github.com/org/repo1
```

This, in essence, performs the following, among others:

```
git init .
git remote add origin https://github.com/org/repo1
git remote add contrib https://github.com/org/repo1_contrib
git fetch
git push contrib origin/master:master
git push contrib --tags
```