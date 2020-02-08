
#import .csv file from local file
data <- read.csv("C:\\Users\\mw\\Desktop\\Coding\\Expenditure\\Provadue.csv", sep = ";")
head (data)

#Built a plot with Plotly

p <- plot_ly(data, x = data$Country.Name, y = data$X2014, type = 'bar', name = 'Eduexp_2014',
             marker = list(colour = 'rgb(49,130,189)')) %>%
  add_trace(y = data$X2015, name = 'Eduexp_2015', marker = list(colour = 'rgb(204, 204, 204)'))%>%
  add_trace(y = data$X2016, name = 'Eduexp_2016', marker = list (colour = 'rgb(49,130,189)'))%>%
  layout(xaxis = list (title = 'Expenditure for education in Italy and its neighbours', tickangle = -45),
         yaxis = list (title = 'Billion Dollars', domain = c(4.17500, 6.00000)),
         margin = list(b = 100),
         barmode = 'group')
p

