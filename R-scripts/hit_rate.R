library(ggplot2)
library(forcats)

data <- read.csv(file = '/home/thais/Dev/TVMBench/R-scripts/hit_rate_cuda.csv', sep = ',', header = T)
data$value <- as.numeric(data$value)

data <- data %>%
  mutate(name = fct_reorder(name, value, .desc = FALSE))

data$value <- as.numeric(data$value)

data$name <- reorder(data$name, -data$value)

ggplot(data, aes(x=name, y=value, fill=tipo)) + 
  #geom_text(aes(label = paste(signif(value, digits = 4), "%")), vjust = -.7, color='black', size=2.5, position=position_dodge(width=0.9))+
  theme(legend.position="top", legend.title=element_blank())+
  theme(panel.background = element_rect(fill = 'white', colour = 'gray'),
        panel.grid.major = element_line(color = 'light gray'),
        panel.grid.minor = element_line(color = 'light gray'),
        axis.text.y = element_text(size=30),
        legend.background = element_rect(fill=alpha('white', 0.6)))+
  theme(axis.text.y  = element_text(size=30), 
        axis.text.x=element_text(size=30, angle=45,hjust=.5,vjust=0.5),
        plot.title   = element_text(size = 30),
        legend.text  = element_text(size = 30),
        axis.title.x = element_text(size = 30),
        axis.title.y = element_text(size = 30))+
  labs(x="Deep Learning Model", y="Hit Ratio (%)")+
  geom_bar(stat = "identity", alpha=.9, position = "dodge", color="black")+
  scale_fill_manual(values = c("#66c2a5", "#fc8d62", "#8da0cb"))
