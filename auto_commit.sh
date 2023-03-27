#!/bin/bash

# Generate a random number of commits between 1 and 30
num_commits=$(((RANDOM % 30) + 1))

# Count the total number of commits in the current branch
tot_commits=$(($(git rev-list --count HEAD) + num_commits))

# Create README.md file if not already present
touch README.md

# Loop for the random number of commits
for ((i = 1; i <= num_commits; i++)); do
    # Update the README.md file with the commit date and time, and the total number of commits
    current_time=$(date "+%a, %d %b %Y %T")
    echo "**_Commit date: ${current_time}_**" >README.md
    echo >>README.md
    echo "**_Total commits: ${tot_commits}_**" >>README.md

    # Add README.md file to git
    git add README.md

    # Commit the changes with a message containing the commit message and the current time
    commit_time=$(date "+%Y-%m-%d %H:%M:%S")
    commit_message="Auto commit: iteration $i of $num_commits 🚀 $commit_time"
    git commit -s -m "$commit_message"

    # Sleep for 1 second to add some randomness
    sleep 1
done
