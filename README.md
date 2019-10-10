# MOD GitHub Actions

This GitHub Action runs the [mod](https://github.com/variantdev/mod) for package management.

## Usage

```yaml
name: Update dependencies
on:
  schedule:
  - cron: '0 0 * * *'

jobs:
  up:
    name: mod up
    runs-on: ubuntu-18.04
    steps:
    - uses: actions/checkout@v1
    - uses: variantdev/mod-action@v0.6.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
      with:
        args: up --build --pull-request
```

For example, if you run `mod up --build --pull-request` regularly, a new PullRequest will be created when the package is updated.

## Environments

* `MOD_ACTION_WORKING_DIR`: The working directory where mod is run
