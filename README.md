**sakshiagrwal Committed on: Mon, 15 Aug 2022 04:43:56 PM** <!-- 31839799-2b89-44e3-952b-8e872f1455e5 -->

[![Auto commit](https://github.com/Parixshit/AutoCommit/actions/workflows/auto_commit.yml/badge.svg)](https://github.com/Parixshit/AutoCommit/actions/workflows/auto_commit.yml)

This GitHub Actions workflow is designed to automatically generate and commit changes to a repository's `README.md` file on a schedule and when the `workflow_dispatch` event is triggered.

### Workflow

The `auto_commit` job runs on the `ubuntu-latest` virtual machine and has write permissions to the repository's contents. The job consists of the following steps:

1. **Checkout Repository:** This step checks out the `main` branch of the repository using the `actions/checkout@v3` action.
2. **Configure Git:** This step configures the Git user to match the account that will be used for committing changes.
3. **Download Emojis:** This step downloads a list of emojis from the [Gitmoji](https://gitmoji.dev/) project using the `curl` and `jq` commands.
4. **Generate Commits:** This step generates a random number of commits (up to 30) with a random emoji and message using the fetched emojis and a timestamp based on the current time in the Asia/Kolkata timezone. The number of commits can be customized using the `num_commits` input, which has a default value of 5.
5. **Push Changes:** This step pushes the generated commits to the `main` branch of the repository using the `git push` command.

### Schedule

This workflow is triggered on a schedule using a cron expression that runs every day at midnight UTC (`0 0 * * 0,1,3,4,6`), except for Tuesdays and Fridays. The schedule can be adjusted by modifying the `cron` expression in the workflow file.

### Manual Trigger

This workflow can also be manually triggered using the `workflow_dispatch` event, which allows the user to specify the number of commits to generate using the `num_commits` input.
