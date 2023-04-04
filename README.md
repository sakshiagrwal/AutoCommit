# Auto Commit

[![Auto commit](https://github.com/Parixshit/AutoCommit/actions/workflows/auto_commit.yml/badge.svg)](https://github.com/Parixshit/AutoCommit/actions/workflows/auto_commit.yml)

This [GitHub Actions workflow](https://github.com/Parixshit/AutoCommit/blob/workflow/.github/workflows/auto_commit.yml) is designed to automatically generate and commit changes to a repository's `README.md` file on a schedule and when the `workflow` branch is pushed.

### Workflow

The `auto_commit` job runs on the `ubuntu-latest` virtual machine and has write permissions to the repository's contents. The job consists of the following steps:

1. **Checkout Repository:** This step checks out the `main` branch of the repository using the `actions/checkout@v3` action.
2. **Configure Git:** This step configures the Git user to match the account that will be used for committing changes.
3. **Generate Commits:** This step generates a random number of commits (up to 30) with a random emoji using the [Emojis World](https://github.com/abourtnik/emojis-world) API.
4. **Push Changes:** This step pushes the generated commits to the `main` branch of the repository.

### Schedule

This workflow is triggered on a schedule using a cron expression that runs every Sunday, Monday, Wednesday, Thursday, and Saturday at midnight UTC (`0 0 * * 0,1,3,4,6`).
