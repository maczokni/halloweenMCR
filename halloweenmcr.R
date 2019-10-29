library(jsonlite)
library(lubridate)

files <- list.files("HalloweenMCR,MCRMONSTERS", pattern = "json.xz", recursive = T)

# untar("HalloweenMCR,MCRMONSTERS/", files =files)

list_results <- lapply(paste0("HalloweenMCR,MCRMONSTERS/",files), fromJSON)


i <- 1
file_list <- list()
for(json_file in files){
  
  # file_list[[i]] <- fromJSON(paste0("HalloweenMCR,MCRMONSTERS/",json_file), simplifyVector = TRUE)
  test <- fromJSON(paste0("HalloweenMCR,MCRMONSTERS/",json_file), simplifyVector = TRUE)
  file_list[[i]] <- data.frame(caption = unlist(test[[1]][[4]][[1]]), 
                               num_comments = test[[1]][[6]][[1]], 
                               taken_at = as_datetime(test[[1]][[7]][[1]]), 
                               img_url = test[[1]][[9]][[1]], 
                               num_likes = test[[1]][[10]][[1]], 
                               username = test[[1]][[12]][[4]],
                               may_contain = test[[1]][[16]][[1]]
                               )
  i <- i + 1
}

mydf <- do.call(rbind, file_list)



write.csv(mydf[mydf$taken_at > dmy("01/01/2019"),], file = "HalloweenMCR,MCRMONSTERS/mcrmonsters_2019.csv")




