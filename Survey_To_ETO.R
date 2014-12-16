survey<-read.csv("C:/Users/Administrator.ANNJONES/Documents/Survey_To_ETO/Student Survey.csv")
template<-read.csv("C:/Users/Administrator.ANNJONES/Documents/Survey_To_ETO/Demographics Template.csv")

check=cbind(names(survey),names(template))
#Creat empaty new columns
survey$Case.Number<-rep(NA,nrow(survey))
survey$CA..USI<-rep(NA,nrow(survey))
survey$CA..PAS.ID<-rep(NA,nrow(survey))
survey$CA..STARS.ID<-rep(NA,nrow(survey))
survey$SSN<-rep(NA,nrow(survey))
survey$School.Name_774<-rep("Career Academy (HS)(DC)(PCS)",nrow(survey))
survey$Grade_1124<-rep(NA,nrow(survey))
survey$Ext<-rep(NA,nrow(survey))
survey$Program.Name<-rep(NA,nrow(survey))
survey$Program.Start.Date<-rep(NA,nrow(survey))
survey$Program.End.Date<-rep(NA,nrow(survey))
survey$Dismissal.Reason<-rep(NA,nrow(survey))
survey$Emergency.Contact.Name<-paste(survey$First.Name.1,survey$Last.Name.1)
survey$Entry.code_1139<-rep(NA,nrow(survey))
#reselect columns
survey_upload<-subset(survey,select=c(1,58:61,2,4,3,6,5,11:13,7:10,50,70,48,
                                      47,14:17,29:32,35,63,64,36,27,39,62,22,
                                      54:56,65,71,57,38,26,28,43,25,40,33,34,
                                      23,44,37,42,41,66:69))
check1<-cbind(names(survey_upload),names(template))
#rename the survey
names(survey_upload)=names(template)
#write into a .csv file
write.csv(survey_upload,
          "C:/Users/Administrator.ANNJONES/Documents/Survey_To_ETO/survey_ETO.csv",
          row.names=FALSE)
