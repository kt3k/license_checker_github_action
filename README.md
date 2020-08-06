# license_checker

> GitHub Action for checking the license lines of the files in a repository

# Usage

First create .licenserc.json file like the below:

```json
{
  "**/*.ts": "// Copyright 2019 My Name. All rights reserved. MIT license."
}
```

`**/*.ts" part means which files to check the license lines, and its value is the actual license lines. Change the glob pattern and license lines for your project.

Then create GitHub workflow file like the below:

```yml
name: Check License Lines
on:
  push:
    branches: [master]
jobs:
  check-license-lines:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Check License Lines
      uses: kt3k/license_checker@v1.0.2
```

This action checks the license lines in the files on every push.

See [deno_license_checker][] for more details about available configs in `.licenserc.json`.

# License

Blue Oak Model License, version 1.0.0.
