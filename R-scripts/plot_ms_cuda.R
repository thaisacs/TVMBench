library(ggplot2)
library(reshape2)
library(ggstatsplot)
library(tcltk)
library(rstatix)
library(PMCMRplus)
library(dplyr)
library(scales)

data <- read.csv(file = '/home/thais/Dev/TVMBench/R-scripts/best-ms-cuda.csv', sep = ',', header = T)
#data <- read.csv(file = '/home/thais/Dev/TVMBench/test', sep = ',', header = T)
ggplot(data=data, aes(x=iteration, y=value, group=tipo, ymin=value-(2*desvio), ymax=value+(2*desvio), fill=tipo, color=tipo)) +
  geom_ribbon(alpha=.3, lty=0) +
  geom_line(size=1.5) +
  coord_cartesian(ylim=c(1, 1.5), xlim=c(1, 1000))+
  geom_hline(yintercept=1.0615, linetype="dashed", size=.5)+
  geom_vline(xintercept=270, linetype="dashed", size=.5)+
  theme(legend.justification=c(1, 1),legend.position=c(.9, .9),legend.title=element_blank())+
  theme(panel.background = element_rect(fill = 'white', colour = 'gray'),
        panel.grid.major = element_line(color = 'light gray'),
        panel.grid.minor = element_line(color = 'light gray'),
        legend.background = element_rect(fill=alpha('white', 0.6)))+
  #ggtitle('a) The best solution found in each search iteration (Error ribbons indicate ± 2 SEM)')+
  theme(axis.text.y  = element_text(size=20), 
        axis.text.x  = element_text(size=20),
        plot.title   = element_text(size = 20),
        legend.text  = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        axis.title.y = element_text(size = 20))+
  ggtitle('       95% Confidence Interval')+
  labs(x="Iteration", y="Normalized Execution Time")+
  scale_x_continuous(breaks = seq(0, 1000, 100))+
  scale_color_manual(values=c('#fc8d62', '#8da0cb', '#8dd1cd'), aesthetics = c("colour", "fill"))

data <- read.csv(file = '/home/thais/Dev/TVMBench/R-scripts/acc-ms-cuda.csv', sep = ',', header = T)
ggplot(data=data, aes(x=iteration, y=value, group=tipo, ymin=value-(2*desvio), ymax=value+(2*desvio), fill=tipo, color=tipo)) +
  geom_ribbon(alpha=.3, lty=0) +
  geom_line(size=1.5) +
  geom_vline(xintercept=270, linetype="dashed", size=.5)+
  theme(legend.justification=c(1, 1),legend.position=c(.3, .9),legend.title=element_blank())+
  theme(panel.background = element_rect(fill = 'white', colour = 'gray'),
        panel.grid.major = element_line(color = 'light gray'),
        panel.grid.minor = element_line(color = 'light gray'),
        legend.background = element_rect(fill=alpha('white', 0.6)))+
  theme(axis.text.y  = element_text(size=20), 
        axis.text.x  = element_text(size=20),
        plot.title   = element_text(size = 20),
        legend.text  = element_text(size = 20),
        axis.title.x = element_text(size = 20),
        axis.title.y = element_text(size = 20))+
  labs(x="Iteration", y="Accumulated Normalized Execution Time")+
  #ggtitle('b) The compilation overhead in each search iteration (Error ribbons indicate ± 2 SEM)')+
  ggtitle('       95% Confidence Interval')+
  scale_x_continuous(breaks = seq(0, 1000, 100))+
  scale_color_manual(values=c('#fc8d62', '#8da0cb', '#8dd1cd'), aesthetics = c("colour", "fill"))
