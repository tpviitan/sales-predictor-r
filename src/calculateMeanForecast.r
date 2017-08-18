calculateMeanForecast <- function(parameters, inp){

    return(data.frame(date=inp$date, forecast=rep(parameters$avg, length(inp[,1]))))
    
}
