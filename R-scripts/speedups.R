library(ggplot2)
library(reshape2)
library(ggstatsplot)
library(tcltk)
library(rstatix)
library(PMCMRplus)
library(dplyr)
library(scales)

data <- read.csv(file = '/home/thais/Dev/R-scripts/speedup.csv', sep = ',', header = T)
data$approach <- factor(data$approach, levels = c("TVM-Ansor", "TVM-MetaSchedule", "TGC-Ansor", "TGC-MetaSchedule"))

ggplot(data=data, aes(x=model_name, y=tuning_mean, fill=approach))+
  geom_bar(stat="identity", color="black", position=position_dodge(), alpha=.9)+
  geom_errorbar(aes(ymin=tuning_mean-tuning_std, ymax=tuning_mean+tuning_std), width=.2,
                position=position_dodge(.9))+
  scale_fill_brewer(palette="Greys")+
  theme(axis.text.x=element_text(angle=45,hjust=.5,vjust=0.5))+
  #theme(legend.justification=c(1, 1),legend.position=c(.9, .9),legend.title=element_blank())+
  theme(panel.background = element_rect(fill = 'white', colour = 'gray'),
        panel.grid.major = element_line(color = 'light gray'),
        panel.grid.minor = element_line(color = 'light gray'),
        axis.text.y = element_text(size=8),
        legend.background = element_rect(fill=alpha('white', 0.6)))+
  ##labs(x="Deep Learning Model", y="Normalized Tuning Time")+
  labs(x="Deep Learning Model", y="Auto-Tuning Time (Minutes)")+
  #scale_fill_manual(values = c("#E07B39", "#6194C2FF", "#6AA84F", "#D36C8C"))+ 
  #scale_fill_manual(values = c("#ca0020", "#f4a582", "#bababa", "#404040"))+
  scale_fill_manual(values = c("#66c2a5", "#fc8d62", "#8da0cb", "#e78ac3"))+
  #geom_hline(yintercept=1, linetype="dashed", size=.5, color = "black")+
  theme(axis.text.y  = element_text(size=14), 
        axis.text.x=element_text(size=14, angle=45,hjust=.5,vjust=0.5),
        plot.title   = element_text(size = 14),
        legend.text  = element_text(size = 14),
        axis.title.x = element_text(size = 14),
        axis.title.y = element_text(size = 14))+
  theme(legend.position="top", legend.title=element_blank())
