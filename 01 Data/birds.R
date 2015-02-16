birds <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from birds"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_rj6793', PASS='orcl_rj6793', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1)))) 
# Need to convert from factors to floats
birds[,1] <- as.numeric(as.character(birds[,1]))
birds[,15] <- as.numeric(as.character(birds[,15]))
birds[,16] <- as.numeric(as.character(birds[,16]))
tbl_df(birds)