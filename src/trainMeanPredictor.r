trainMeanPredictor <- function(trainingSet){

    return(list(avg=mean(trainingSet$sales_quantity), N=length(trainingSet$sales_quantity)))

}
