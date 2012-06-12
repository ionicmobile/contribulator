# Contribulator

### Been here?

1. You have a private repo that core members have access to
1. You have a private repo forked from that repo that contributors have access to
1. You constantly have to update the contrib repo's master branch with the core's master branch.

```
gem install contribulator
contribulator publish https://github.com/org/repo
```

Pushes the master branch from repo to repo_contrib. 

Automate this with Jenkins or a github hook and it's golden!

### Ignore cached setup

The command will keep a cache of the setup required to perform the publication.  If you wish to publish with a fresh setup, use the `--fresh` flag.

```
contribulator publish https://github.com/org/repo1 --fresh
```

### Publish to a custom destination repository

If you wish to publish to a different repo than the default appended _contrib repo you can specify that as a second argument.

```
contribulator publish https://github.com/org1/repo2 https://github.com/org2/repo2
```

### Help

```
contribulator help
contribulator help publish
```

## Contribute

I'd love for you to improve this gem

1. Fork it
1. Branch it
1. Request a pull

Special thanks to [@davetron5000](https://github.com/davetron5000) for [gli](https://rubygems.org/gems/gli)

## What's it do?

This, in essence, performs the following, among others:

```
git init .
git remote add origin https://github.com/org/repo1
git remote add contrib https://github.com/org/repo1_contrib
git fetch
git push contrib origin/master:master
git push contrib --tags
```

