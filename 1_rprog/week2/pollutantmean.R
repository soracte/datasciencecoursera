pollutantmean <- function(directory, pollutant, id = 1:332) {
  data = vector()
  
  for (file_id in id) {
    monitor_data <- read.csv(file.path(directory, paste(sprintf("%03d", file_id), ".csv", sep = "")))
    data <- c(data, monitor_data[, pollutant])
  }
  
  mean(data, na.rm = TRUE)
}