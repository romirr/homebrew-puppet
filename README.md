# homebrew-puppet

homebrew tap for [puppet](https://github.com/romirr/puppet): your agents drive your real chrome.

```sh
brew install romirr/puppet/puppet
puppet install    # extension + native host, once
puppet doctor
```

`Formula/puppet.rb` follows the latest github release: a workflow in this repo re-renders it every 6 hours from the release's `SHA256SUMS` (`render.py`). apache-2.0.
