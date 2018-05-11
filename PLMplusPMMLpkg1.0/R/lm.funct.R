lm.funct <-
function (dataset, predictionFeature, parameters) 
{
    #dataset:= list of 2 objects - 
    #datasetURI:= character sring, code name of dataset
    #dataEntry:= data.frame with 2 columns, 
    #1st:name of compound,2nd:data.frame with values (colnames are feature names)
    #predictionFeature:= character string specifying which is the prediction feature in dataEntry, 
    #parameters:= list with parameter values
    
    dat1 <- read.in.json(dataset, predictionFeature, parameters)
    dat1.bind <- cbind(dat1$y, dat1$x)
    dat1.bind.colN <- dat1$data.names
    colnames(dat1.bind) <- paste("x", 1:ncol(dat1.bind), sep = "")
    m1 <- lm(as.formula(paste(colnames(dat1.bind)[1], "~.")), 
             data = dat1.bind, model = FALSE)
    m1$fitted.values <- NULL
    m1$effects <- NULL
    m1$residuals <- NULL
    m1.env.keep <- which(ls(attr(m1$terms, ".Environment")) %in% 
                             c("m1", "dat1.bind.colN") == TRUE)
    rm(list = ls(attr(m1$terms, ".Environment"))[-m1.env.keep], 
       envir = attr(m1$terms, ".Environment"))
    m1.ser <- serialize(m1, connection = NULL)
    m1.pmml <- pmml(m1)
    m1.pmml <- toString(m1.pmml)
    f.names <- names(m1$coefficients)[-1]
    indiF <- f.names
    f.names <- unlist(strsplit(f.names, "x"))
    f.names <- as.numeric(f.names[seq(2, length(f.names), 2)])
    dat1.colN.keep <- dat1.bind.colN[f.names]
    pred.name<- paste(dat1.bind.colN[-f.names],'Predicted',sep=' ')
    
    indiF <- cbind(indiF, dat1.colN.keep)
    colnames(indiF) <- c("ModelCoef", "RealFeatureNames")
    
    m1.ser.list <- list(rawModel = m1.ser, pmmlModel = m1.pmml,
                        predictedFeatures=pred.name, 
                        independentFeatures = dat1.colN.keep, 
                        additionalInfo = list(indepFeatures=indiF, predictedFeatures=pred.name))
    return(m1.ser.list)
}
