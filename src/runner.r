source('trainMeanPredictor.r')
source('calculateMeanForecast.r')
source('calculateAndPrintError.r')


### Load & handle data 

trainingSet <- read.csv('../data/training.csv')
trainingSet$date <- as.Date(trainingSet$date)

testingSet <- read.csv('../data/testing.csv')
testingInput <- testingSet[,-8]
testingInput$date <- as.Date(testingSet$date)

testingOutput <- data.frame(date=as.Date(testingSet$date), sales_quantity=testingSet$sales_quantity)

### Train forecasting algorithm 

meanPredictorParameters <- trainMeanPredictor(trainingSet)

### Calculate forecast

meanForecast <-  calculateMeanForecast(meanPredictorParameters, testingInput)

### Calculate and print error metrics

calculateAndPrintError(meanForecast, testingOutput, 'mean predictor')

