objects(df,df2,x)
df <- as.data.frame(read_csv("2008.csv", n_max = 1e6))


df <- df[,c("CarrierDelay","WeatherDelay",
            "NASDelay", "SecurityDelay",
            "LateAircraftDelay")]
head(df2)

mi_funcion <- function(x){
  ifelse(any(is.na(x)),NA, sum(x)/length(x))
  
}

require(parallel)

ncl <- detectCores()
cl <- makeCluster(16)

clusterExport(cl, "mi_funcion")

results <- parApply(cl, df2, 1, mi_funcion)

stopCluster(cl)

####

mi_variable <-ncol(df2)

mi_funcion <- function(x){
  ifelse(any(is.na(x)),NA, sum(x)/mi_variable)
  
}

clusterExport (cl,"mi_variable")

########
install.packages("schoolmath")
require(schoolmath)

scm(2,3)

ncl <- detectCores()
cl <- makeCluster(16)


