#importing the data set
tooth_data= ToothGrowth

#creating a function for summarizing the data
#based on grouping variables

sum =function(a, b, c, d){
  result=a+b+c+d
  return(result)
  
}

sum(23, 25, 89, 87)

data_summary= function(data, varname,groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean =mean(x[[col]], na.rm =TRUE), sd= sd(x[[cil]], na.rm = TRUE))
  }
  data_sum = ddply(data, groupnames, .fun=summary_func, varname)
  data_sum = rename(data_sum, c("mean"= varname))
}

d_summary = data_summary(tooth_data, varname = "len", groupnames = C("supp", "dose"))
                         
                         
                         