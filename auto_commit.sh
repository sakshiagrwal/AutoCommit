#!/bin/bash

# Generate a random number of commits between 1 and 30
num_commits=$(( ( RANDOM % 30 ) + 1 ))

# Count the total number of commits in the current branch
tot_commits=$(( $(git rev-list --count HEAD) + num_commits ))

# Create LAST_UPDATED file if not already present
touch LAST_UPDATED

# Loop for the random number of commits
for (( i=1; i<=$num_commits; i++ ))
do
    # Update the LAST_UPDATED file with the current date and time and the total number of commits
    current_time=$(date "+%Y-%m-%d %H:%M:%S")
    echo "Current date and time: $current_time.\nTotal number of commits: $tot_commits" > LAST_UPDATED

    # Add LAST_UPDATED file to git
    git add LAST_UPDATED

    # Commit the changes with a message containing the current commit number, total number of commits, a rocket emoji, and the current time
    git commit -s -m "Commit $i of $num_commits 🚀 $current_time"

    # Sleep for 1 second to add some randomness
    sleep 1
done
