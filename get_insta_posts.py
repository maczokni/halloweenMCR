# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import instaloader
#from itertools import islice
#from math import ceil
#from instaloader import Instaloader, Profile


#PROFILE = "rekuszbekusz"        # profile to download from


#loader = instaloader.Instaloader()
#loader.interactive_login('rekuszbekusz')
#profile = instaloader.Profile.from_username(loader.context, 'ncalvertuk')
#
#for post in profile.get_posts():
#    loader.download_post(post, target=profile.username)
#

loader = instaloader.Instaloader()

loader.download_hashtag('HalloweenMCR', max_count=10)
    




