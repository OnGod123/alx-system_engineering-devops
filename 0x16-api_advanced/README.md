# Reddit API Interaction

This repository contains scripts for interacting with the Reddit API using Python, Node.js, and jQuery AJAX requests.

## Python Scripts

### 0-subs.py
- This script provides a function `number_of_subscribers(subreddit)` to query the Reddit API and return the number of subscribers for a given subreddit.
- Usage: `python3 0-main.py <subreddit>`

### 1-top_ten.py
- This script provides a function `top_ten(subreddit)` to query the Reddit API and print the titles of the first 10 hot posts listed for a given subreddit.
- Usage: `python3 1-main.py <subreddit>`

### 2-recurse.py
- This script provides a recursive function `recurse(subreddit, hot_list=[])` to query the Reddit API and return a list containing the titles of all hot articles for a given subreddit.
- Usage: `python3 2-main.py <subreddit>`

## Node.js Scripts

### fetch_subscribers.php
- This script fetches the number of subscribers for a given subreddit using the Reddit API.

### fetch_top_posts.php
- This script fetches the titles of the first 10 hot posts for a given subreddit using the Reddit API.

### fetch_all_posts.php
- This script fetches the titles of all hot articles for a given subreddit using the Reddit API.

## jQuery Script

### index.html
- This HTML file contains a jQuery script that makes AJAX requests to the PHP scripts mentioned above to interact with the Reddit API.
- It provides buttons to fetch subscribers, top 10 hot posts, and all hot posts for a given subreddit.

## Usage
1. Clone the repository.
2. Run the Python scripts with the appropriate arguments to interact with the Reddit API.
3. Configure a web server to host the PHP scripts and HTML file.
4. Open the HTML file in a web browser and click the buttons to fetch data from the Reddit API.


