complete <- function(directory,id = 1:332){
        files_list <- list.files(directory, full.names = TRUE)
        frame <- data.frame()
        for (i in id){
                x <- read.csv(files_list[i])
                nobs <- sum(complete.cases(x))
                z <- data.frame(i,nobs)
                frame<- rbind(frame, z)
        }
        colnames(frame) <- c("id", "nobs")
        frame
}