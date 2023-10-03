# Github Actions lint-json-inside-yaml

This action detects and validates JSON data inside YAML files.

## Usages

Simple as:

```yaml
uses: dungpham91/lint-json-inside-yaml@v0.0.2
```

### Optional input parameters

- `folder_or_file` - enter file/folder (space separated), wildcards accepted. Examples:
  - `.` - checks for JSON in all files of the current folder, including recursive subfolders
  - `file1.yaml` - check JSON for a single file
  - `file1.yaml file2.yaml` - check JSON for 2 or more files
  - `folder1 folder2` - check JSON for 2 or more folders
  - `folder1 file1.yaml` - check JSON for both file and folder at the same time
  - `folder1/*.yaml folder2/*values.yaml` - check JSON for files in folder using wildcards

### Example usage in workflow

```yaml
---
name: JSON Lint

on: [push]

jobs:
  json-lint:
    runs-on: ubuntu-latest
    steps:

      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - name: JSON lint
        uses: dungpham91/lint-json-inside-yaml@v0.0.2
        with:
          folder_or_file: ./test-data
```

Use in conjunction with the action to detect file changes

```yaml
name: JSON Lint

on:
  push:
    branches:
      - main

jobs:
  json-lint:
    runs-on: ubuntu-latest
    steps:

      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - name: Get changed files
        id: changed-files
        uses: tj-actions/changed-files@v39
        with:
          files: |
            test-data/**

      - name: JSON lint
        uses: dungpham91/lint-json-inside-yaml@v0.0.2
        with:
          folder_or_file: ${{ steps.changed-files.outputs.all_changed_files }}
```