library(ggplot2)

data <- read.csv(file = '/home/thais/Dev/R-scripts/hashs.csv', sep = ',', header = T)
# Barplot
ggplot(data, aes(x=reorder(name, -value), y=value)) + 
  theme(legend.justification=c(1, 1),legend.position=c(.9, .9),legend.title=element_blank())+
  theme(panel.background = element_rect(fill = 'white', colour = 'gray'),
        panel.grid.major = element_line(color = 'light gray'),
        panel.grid.minor = element_line(color = 'light gray'),
        legend.background = element_rect(fill=alpha('white', 0.6)))+
  theme(axis.text.y  = element_text(size=14), 
        axis.text.x  = element_text(size=14),
        plot.title   = element_text(size = 14),
        legend.text  = element_text(size = 14),
        axis.title.x = element_text(size = 14),
        axis.title.y = element_text(size = 14))+
  #theme(axis.text.x=element_text(angle=45,hjust=.5,vjust=0.5))+
  labs(x="Minimum Occurrence", y="Subgraphs (%)")+
  geom_bar(stat = "identity", alpha=.9, color="black", fill="#8da0cb")+
  #scale_fill_manual(values = c("#8da0cb"))+
  geom_text(aes(label = paste(signif(value, digits = 4), "%")), vjust = -0.5, color='black', size=4)
