# Automated README.md Commits

[![Auto commit](https://github.com/Parixshit/red/actions/workflows/auto_commit.yml/badge.svg?branch=workflow)](https://github.com/Parixshit/red/actions/workflows/auto_commit.yml)

This [GitHub Actions workflow](https://github.com/Parixshit/red/blob/workflow/.github/workflows/auto_commit.yml) is designed to automatically generate and commit changes to a repository's `README.md` file on a schedule and when the `workflow` branch is pushed.

### Workflow

The `auto_commit` job runs on the `ubuntu-latest` virtual machine and has write permissions to the repository's contents. The job consists of the following steps:

1. **Checkout repo:** This step checks out the `main` branch of the repository using the `actions/checkout@v3` action.
2. **Set up Git:** This step configures the Git user to match the account that will be used for committing changes.
3. **Generate commits:** This step generates a random number of commits (up to 30).
4. **Push changes:** This step pushes the generated commits to the `main` branch of the repository.

### Schedule

This workflow is triggered on a schedule using a cron expression that runs every Sunday, Monday, Wednesday, Thursday, and Saturday at midnight UTC (`0 0 * * 0,1,3,4,6`).
