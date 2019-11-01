# halloweenMCR

This is my repo for getting posts from instagram using #halloweenMCR and #MCRMonsters

I use [instaloader](https://instaloader.github.io/) to get the posts. See multihashtags.py

Then I use R and jsonlite and lubridate packages to clean the JSON. See halloweenmcr.R

After this I had to export the data and manually tag each image with which monster it contains. 

Finally I use R and ggplot2 to make plots. See graphs.R
