calculateAndPrintError <- function(forecast, testingOutput, pname='<unknown>'){
    fc <- forecast$forecast
    out <- testingOutput$sales_quantity
        
    if(length(fc) != length(out))
        stop("Incorrect forecast length")
    
    print(sprintf('************ Error metrics for %s **********', pname))
    print(sprintf('bias: %.3f', mean(fc-out)))
    print(sprintf('mean absolute error: %.3f', mean(abs(fc-out))))
    print(sprintf('RMS error: %.3f', sqrt(mean((fc-out)^2))))
    print(sprintf('Std. dev: %.3f', sd(fc-out)))
    print(sprintf('min error: %.3f', min(fc-out)))
    print(sprintf('max error: %.3f', max(fc-out)))

}
