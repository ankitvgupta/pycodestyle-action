# pycodestyle-action
A Github Action that runs pycodestyle and leave a comment on your pull request


## Example
Add the following to `.github/workflows/myworkflow.yml`

``` 
on: [pull_request]
jobs:
  pycodestyle:
    name: pycodestyle
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: pycodestyle
      uses: ankitvgupta/pycodestyle-action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
