pred.funct <-
function(dataset,rawModel,additionalInfo){
    #dataset:= list of 2 objects - 
    #datasetURI:= character sring, code name of dataset
    #dataEntry:= data.frame with 2 columns, 
    #1st:name of compound,2nd:data.frame with values (colnames are feature names)
    #rawModel:= serialized raw model for prediction
    #additionalInfo:= FOR LM MODEL what are the features used for setting the model,
    #data frame with 2 columns: 1st  ModelCoef giving the dummy coefficient names produced for independent
    #features in the model, and 2nd RealFeatureNames which are ambit's feature names
    
    m1<- read.in.json.for.pred(dataset,rawModel,additionalInfo)
    m1.dat<- m1$x.mat
    colnames(m1.dat)<- m1$additionalInfo$indiFeatures[,1]
    dep.name<- m1$additionalInfo$depFeature
    list.name<- additionalInfo$predictedFeatures#paste(dep.name,'predicted',sep='')
    m1.mod<- m1$model
    
    #m1<- readRDS(model.name)
    p1<- predict(m1.mod,m1.dat)
    #colnames(p1)<- list.name
    
    for(i in 1:length(p1)){
        w1<- data.frame(p1[i])
        colnames(w1)<- list.name
        if(i==1){p7.1<- list(unbox(w1))
        }else{
            p7.1[[i]]<- unbox(w1)
        }
    }
    p7.2<- list(predictions=p7.1)
    
    #saveRDS(p1,pred.name)
    #p1.ser<- serialize(p1,connection=NULL)
    #p1.ser.list<- list(predByRawModel=p1.ser)
    return(p7.2)#.ser.list))#,predictionFeatures=m1$independentFeatures))
}
