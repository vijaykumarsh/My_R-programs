getwd()
Movies_Ratings<-read.csv("Movie-Ratings.csv")

head(Movies_Ratings)

colnames(Movies_Ratings)<-c("Film","Genre","CriticRating","AudienceRating","BudgetM","Year")

head(Movies_Ratings)
tail(Movies_Ratings)

str(Movies_Ratings)

factor(Movies_Ratings$Year)

Movies_Ratings$Year<-factor(Movies_Ratings$Year)

library(ggplot2)

P<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre,size=BudgetM))

P+geom_line()


#overriding aes

Q<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre,size=BudgetM))

Q+geom_point(aes(x=BudgetM))+xlab("Budget in Millions $$$")

Q+geom_point(aes(x=BudgetM))+xlab("B")

Q+geom_line(size=1)

r<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating))
r+geom_point()


#Add color

#1 : Mapping
r+geom_point(aes(color=Genre))

#2 : Setting
r+geom_point(color="DarkGreen")

r+geom_point(aes(size=BudgetM))


#Bar and density charts

s<-ggplot(data=Movies_Ratings,aes(x=BudgetM,color=BudgetM))
s+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")

s+geom_density(aes(fill=Genre),position="Stack")

t<-ggplot(data=Movies_Ratings)

t+geom_histogram(binwidth = 10,aes(x=AudienceRating),fill="White",color="Blue")

t+geom_histogram(binwidth = 10,aes(x=CriticRating),fill="White",color="Blue")


u<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre))
u+geom_point()+geom_smooth(fill='NA')


Y<-ggplot(data=Movies_Ratings,aes(x=Genre,y=AudienceRating,color=Genre))

Y+geom_boxplot(size=)+geom_smooth(fill='NA')

library(ggplot2)
u<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre))

u+geom_point()+geom_smooth(fill='NA')

U<-ggplot(data=Movies_Ratings,aes(x=Genre,y=CriticRating,color=Genre))

U+geom_boxplot()

U+geom_boxplot(size=1.2)+geom_jitter()


# Facets

v<-ggplot(data=Movies_Ratings,aes(x=BudgetM))
v+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")+facet_grid(Genre~.,)


#scatter plots
library(ggplot2)
w<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,color=Genre))

w+geom_point(size=3)+facet_grid(Genre~.,)

w+geom_point(size=3)+facet_grid(Genre~Year)+geom_smooth()+coord_cartesian(ylim=c(0,100))


library(ggplot2)
m<-ggplot(data=Movies_Ratings,aes(x=CriticRating,y=AudienceRating,size=BudgetM,color=Genre))
m+geom_point()+xlim(50,100)+ylim(50,100)


n<-ggplot(data=Movies_Ratings,aes(x=BudgetM))
n+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")+ylim(0,50)


o<-ggplot(data=Movies_Ratings,aes(x=BudgetM))

h<-o+geom_histogram(binwidth=10,aes(fill=Genre,color=Genre),color="Black")

h+xlab("Money Axis")+ylab("Number of movie")+ggtitle("Movie Budget Distribution")+
                                              theme(axis.title.x=element_text(color="DarkGreen",size=30),
                                                   axis.title.y = element_text(color="Red",size=30),
                                                   legend.title = element_text(size=30),
                                                   legend.text = element_text(size=20),
                                                   legend.position = c(1,1),
                                                   legend.justification = c(1,1),
                                                   plot.title = element_text(color="DarkGreen",size=40,family="Courier"))

?theme
        