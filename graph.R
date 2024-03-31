# library
library(ggplot2)

# create a dataset
group <- c(rep("prefixation" , 5),
           rep("suffixation" , 5),
           rep("complex" , 5),
           rep("simple" , 5) )
condition <- rep(c("10" , "100" , "1000", "10000", "BERT") , 4)
quantities <- c(c(0,2,6,8,8),
                c(0,1,5,3,4),
                c(0,0,0,2,0),
                c(0,0,1,4,5))
data <- data.frame(group,condition,quantities)

# Grouped
ggplot(data, aes(fill=condition, y=quantities, x=group), lab="Group") + 
  geom_bar(position="dodge", stat="identity") +
  labs(y = "Morphologically correct tokenizations", x = "Type", fill="Group")
