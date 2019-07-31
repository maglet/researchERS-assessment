library(tidyverse)

#Read data
data<-read_csv("data/researchERS_assessment_data.csv")

#Calculates the number of responses for each field
sum(!is.na(data$data_value))
sum(!is.na(data$ethics))
sum(!is.na(data$finding_resources))
sum(!is.na(data$Overall))
sum(!is.na(data$useful))
sum(!is.na(data$expectations))

#plot "Overall"
overall<-filter(data, !is.na(Overall))%>%
  ggplot(aes(x = Overall))+
  geom_bar()+
  labs(title = "Overall, I would rate the workshop as...",
       x = "", 
       y = "Count")+
  theme_bw()+
  theme(text = element_text(size = 18))

ggsave("plots/overall.jpg", 
       overall, 
       dpi = 1200, 
       device = "jpeg")

#plot "expectations"
expectations<-filter(data, !is.na(expectations))%>%
  ggplot(aes(x = expectations))+
  geom_bar()+
  labs(title = "The workshop content met my expectations",
       x = "", 
       y = "Count")+
  theme_bw()+
  theme(text = element_text(size = 18))

ggsave("plots/expectations.jpg", 
       expectations, 
       dpi = 1200, 
       device = "jpeg")

#plot "useful"
useful<-filter(data, !is.na(useful))%>%
  ggplot(aes(x = useful))+
  geom_bar()+
  labs(title = "The information learned will be useful",
       x = "", 
       y = "Count")+
  theme_bw()+
  theme(text = element_text(size = 18))

ggsave("plots/useful.jpg", 
       useful,
       dpi = 1200, 
       device = "jpeg")

#reshape learning objective data

los<-data%>%
  select(data_value, ethics, finding_resources)%>%
  gather(key = LO, 
         value = Response)%>%
  mutate(Response = recode_factor(Response,
                                "Strongly Agree" = "Strongly Agree", 
                                "Agree" ="Agree", 
                                "Not Sure" = "Not Sure",
                                "not Sure" = "Not Sure",
                                "Disagree" = "Disagree"))

#plot learning objectives
learning_obj<-filter(los, !is.na(Response))%>%
  ggplot(aes(x = Response, 
           fill = LO))+
  geom_bar(position=position_dodge())+
  labs(title = "",
       x = "", 
       y = "Count")+
  theme_bw()+
  theme(text = element_text(size = 18))+ 
  scale_fill_discrete(name = "Learning Objectives")

ggsave("Plots/learning_objectives.jpg", 
       learning_obj, 
       width = 10, 
       height = 7, 
       dpi = 1200, 
       device = "jpeg")
