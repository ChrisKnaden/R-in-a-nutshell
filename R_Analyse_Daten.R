#Data Frames, um die Beispiele zu testen
#uebungsdatei.csv Aufbau: id = INT, int1 = INT, int2 = INT, bool = TRUE / FALSE, string = Strings, date = Date
df1 <- read.csv("uebungsdatei.csv", header = TRUE, sep=";", dec = ".")
df2 <- read.csv("uebungsdatei.csv", header = TRUE, sep=";", dec = ".")

#R-Studio auf das richtige Directory verweisen
setwd("~/R-Projekte/learn_R")

#Pakete / Libaries verwenden
library(extraDistr)

#--------------------
#-- Daten einlesen --
#--------------------
#CSV
df <- read.csv("uebungsdatei.csv", header = TRUE, sep=";", dec = ".") #Meta Data über Länder

#RDA
load("time_series_covid19_confirmed_11-16-2022.rda")

#----------------------------
#-- #Überblick verschaffen --
#----------------------------
str(df)
summary(df)

#-------------------------
#-- Date Transformieren --
#-------------------------
df$date = as.POSIXct(df$date, format="%Y-%m-%d %H:%M:%S")

df$date = as.POSIXct(df$date, format="%Y-%m-%d") #ggf Data groß schreiben, wenn es als ID genutzt wird

#------------------------
#-- Funktion erstellen --
#------------------------
myfunction <- function(parameter1, parameter2){
  
  return()
}

#---------------------
#-- Schleifen Arten --
#---------------------
#Vorallem zum aufsummieren oder ausführen mehrerer grafischer Darstellung relevant
for (i in vec) {
  
}
for (i in 1:1000){
  
}
for (i in 1:nrow(df)){
  
}
for (i in 1:ncol(df)){
  
}

#------------------------------------------------
#-- R-Funktionen mit statistischem Hintergrund --
#------------------------------------------------

#Mittelwert
mean(df$int1)

#Median
median(df$int1)

#Maximum
max(df$int1)

#Summe
sum(df$int1)

#Standardabweichung
sd(df$int1)

#Varianz
var(df$int1)

#Korrelation
#Rangkorrelationskoeffizienten - Spearman - Ordinal
cor(x = df$int1,y = df$int2,method="spearman")

#Rangkorrelationskoeffizienten - Bravis-Pearson - Kardinal
cor(x = df$int1,y = df$int2,method="pearson")



#Schiefe sk > 0: rechtsschief, sk = 0: symmetrisch, sk < 0: linksschief
library(moments)
sk = moments::skewness(df$int1)

#Binominalkoeffizient, M über n
choose(27,2) #351

#M!
factorial(5)

#Betrag von einer Zahl
abs(-5)


# |___|___|___|___|
# |   |   |   |   |
# |   |   |   |   |

#-------------------------
#-- Spaltenmanipulation --
#-------------------------
##############
## Vektoren ##
##############
vec <- c(10, 20)
column <- "int1"

#Vector mit einem weiteren Wert befüllen
vec <- c(vec, 10)

#Unique bzw. einzigartige Werte aus einer Spalte filtern
vec <- unique(df$int1)

#Wenn man mit einem Parameter auf die Spalte zugreifen muss (hier: column)
vec <- unique(df[, column])
#Andere Schreibweisen
vec <- unique(df[, colnames(df) == column])
vec <- unique(df[, which(colnames(df) == column)])

#Merke:
df[df$int1 >= 50,]     #Gibt DataFrame zurück
df$int1[df$int1 >= 50] #Gibt Vektor zurück

#################
## Data Frames ##
#################
vec1 <- c(10, 20)
vec2 <- c("ABC", "DEF")
X = "Germany"


#Data Frame erstellen
new_df <- data.frame(ueberschrift1 = vec1,
                     ueberschrift2 = vec2)

#Data Frame nach Spalte sortieren
sort_df <- df[order(df$int1, decreasing = TRUE),]

#Neue Spalte hinzufügen mit Operationen; Spalten müssen gleiche Anzahl Zeilen haben
df$new_column = df$int1 / df$int2
df$new_column = df$int1 * 1.5

#Bestimmte Spalten eines Data Frames in einen neuen Data Frame schreiben
new_df = df[,c("int1", "int2", "string")]

#Neue Spalte mit Nullen; relevant, wenn man Zeilenweise ein Data Frame in einer for-Schleife befüllen möchte
df$new_column = rep(0, nrow(int1))

#Auf Zeile einer Spalte zugreifen (Zelle) bzw. Operation durchführen
for (i in 1:nrow(df)) {
  df$int1[i] <- df$int1[i] / 100
}

#Auf den Namen einer Spalte zugreifen bzw. ihn verändern
colnames(df)    #Alle Spaltennamen
colnames(df)[1] #wäre z.B. int1
df[,1] #auf Spalte mit Spaltenzahl zugreifen

#Auf bestimmte Spalte zugreifen, nur mit Index
for (i in 1:ncol(df)) {
  vec <- c(vec, colnames(df)[i])
}

#Kombination von Bedingung und bestimmte Spaltenrückgabe
new_df = df[df$string == X, c(2,5)] #Gibt alle Werte der Spalten 2 und 5 zurück, die in Spalte string "X" enthalten

#zufällige Zeilen auswählen, 1: Bereich, 2: Anzal der zufälligen Elemente 
set.seed(55)
df$string[sample(1:27,2, replace=F)]

#############
## WICHTIG ##
#############

#Nach Bedingung Data Frame filtern (NICHT DAS KOMMA AM ENDE VERGESSEN!)
sub_df = df[df$string == X,]
sub_df = df[df$int1 > 50,]

#Durchschnittsumme
int_vec = sum(sub_df$int1) / nrow(sub_df)

#Prozentualer Anteil
percentage = length(sub_df$bool[sub_df$bool == TRUE]) / nrow(df)



#Daten am Data Frame bereinigen
df <- read.csv("uebungsdatei.csv", header = TRUE, sep=";", dec = ".")
df$date = as.POSIXct(df$date, format="%d.%m.%Y")

####################################
## Zwei Datensätze zusammenführen ##
####################################


#Intersect, Führe zwei !!!Vektoren!!! zusammen, übernehme nur die Werte, die in beiden  sind
vec <- intersect(df$int1[1:30], df$int2[1:30]) 

#Merge, Führe zwei !!!Data Frames!!! zusammen bezüglich einer Spalte, meistens ID. Die Zeilenanzahl des linken (also x) bleibt gleich.
new_df = merge(df1, df2, by="id")

#%in%, Entferne alle Zeilen aus !!!Data Frame!!!, die von Spalte df1$int1 nicht in Spalte df2$int1 vorkommen. Z.B. df1$User %in% df2$User: alle User die nicht in df2 sind, werden aus df1 entfernt
new_df = df1[df1$int1 %in% df2$int1,]

#grepl, Überprüfe, wo String in Vektor enthalten ist. Gibt Liste mit TRUE und FALSE zurück. In folgender Form gibt es einen Data Frame zurück, der in der Spalte df$string den gesuchten String enhält
new_df = df[grepl(X, df$string),]





#          ####
#       ###
#     ## 
#    #
#   # 
#  #
# #
##
###############

#-------------------
#-- Liniendiagram --
#-------------------
### Normales Liniendiagramm ###
#Wissenschaftliche Schreibweise unterdrücken
options(scipen=999)
df <- df[order(df$date),]

#Plotten eines Liniendiagramms 
plot(x = df$date,
     y = df$int1,
     type = "l",
     col = "blue",
     xlab = "Date",
     ylab = "Häufigkeit", 
     ylim = c(0, 100)) #Schätzen 

#Hinzufügen einer Linie
lines(x = df$date, y = df$int2, col="red")

#Lengende
legend("topleft",
       title = "Überschrift",
       legend = c("Int1","Int2"),
       fill = c("blue", "red"))


### Besondere Form, wenn Date ID ist
corona$Date = as.POSIXct(corona$Date, format="%Y-%m-%d")
options(scipen=999)

#Plotten
plot(x = corona$Date, #oder Germany~Date ...
     y = corona$Germany, #...corona
     xaxt = "n", #Wenn man seine eigene Axis machen möchte, siehe axis.POSIXct
     type = "l", 
     ylim = c(0, 100000000), 
     xlab = "Datum", 
     ylab = "Bestätigte Fallzahlen", 
     col = "black")

lines(China~Date, corona, col = "red") #x = corona$Date, y = corona$China
lines(United.Kingdom~Date, corona, col = "blue")
lines(US~Date, corona, col = "lightblue")
lines(Sweden~Date, corona, col = "orange")

axis.POSIXct(1, format="%m-%Y",
             cex.axis = .7, 
             at=seq(min(corona$Date),max(corona$Date), by="months"))

legend("topleft", legend = c("Deutschland", "China", "Vereinigtes Königreich", "Vereinigte Staaten", "Schweden"), 
       fill = c("black", "red", "blue", "lightblue", "orange"))


### Liniendiagramm zur Veranschaulichung von Versuchswiederholungen ###
#Erstellung Beispielvektor
set.seed(55)
vec <- c()
for(n in 1:1000){
  vec[n] = mean(rnorm(n, mean = 8000, sd = 100))
}

#Liniendiagramm
plot(vec,   #Vector mit Zahlen Werten
     type=('l'),
     xlab="Versuchswiederholungen",
     ylab="Mittelwert",
     main="Überschrift")

#Erwartungswert / Linie zeichnen
abline(h=8000, col="red") #h = y-Wert der Linie


#      /|
#     / |
#    / /
#   / /
#  / /
# / /
#/_/
###########

#-----------------
#-- Lorenzkurve --
#-----------------
#Paket benötigt
library(ineq)

#Lorenzkurve
plot(Lc(df$int1),
     col = "gold",
     main = "Überschrift")

#Weitere Linien hinzufügen
lines(Lc(df$int2),
      col = "darkblue")

#Legende hinzufügen
legend("topleft",
       legend = c("Linie1", "Linie2"),
       fill = c("gold", "darkblue"))


#  ___ ___ ___ ___
# |___|___|___|___|
# |___|___|___|___|
# |___|___|___|___|
# |___|___|___|___|

#-------------------------
#-- Streudiagrammmatrix --
#-------------------------
#Streudiagrammmatrix
par(mfrow = c(1,1))
new_df = df[,c(2,3)] #gewünschte Spalten raussuchen
pairs(new_df)



#
#          ##
#          ##
#      ##  
#      ##  
#   
#  ##  
#  ##
################

#-----------------------------------
#-- Punktdiagramm / Streudiagramm --
#-----------------------------------
#Gegenüberstellung von zwei Spalten bzw. Vektoren
plot(x=df$int1,
     y=df$int2, 
     xlab = "x-Achse", 
     ylab = "y-Achse", 
     main = "Überschrift", 
     xlim = c(0,100), 
     ylim = c(0,100), 
     col = "blue"
)


#Ranking Absteigend der x-Achsen-Werte, Strings auf der x-Achse
plot(sort_df$int1[1:10], #Nur die ersten 10
     xaxt="n",
     xlab = "x-Achse", 
     ylab = "y-Achse", 
     type = "p",
     pch = 16)

#Beschriftung der x-Achse von 1:10
axis(1,at = 1:10, labels=sort_df$string[1:10])


#Wenn man Punkte nach einem bestimten Kriterium farbig markieren möchte
#Schleife über Data Frame nötig, die neue Spalte mit Farben hinzufügt
#Schleife vorweg
df$colour = "black"
for (i in 1:nrow(df)) {
  if(df$int1[i] <= 50){
    df$colour[i] = "blue"
  }
  if(df$int1[i] > 50){
    df$colour[i] = "red" 
  }
}
#Diagramm zeichnen
plot(x=df$int1,
     y=df$int2, 
     xlab = "x-Achse", 
     ylab = "y-Achse", 
     main = "Überschrift", 
     xlim = c(0,100), 
     ylim = c(0,100), 
     col = df$colour) #Spalte der Farbe hinterlegen
#Legende
legend("topright",
       pch = 16,
       title = "Überschrift",
       legend = c("x <= 50", "x >50"),
       col = c("blue", "red"))


#
#      ##
#      ##
#  ##  ##  ##
#  ##  ##  ##
#  ##  ##  ##
#  ##  ##  ##
###############

#---------------------
#-- Balkendiagramme --
#---------------------
### Normales Balkendiagramm ###
#Beispielvektor
vec = c(52.95652, 53.45652, 55.39130, 54.73913, 56.43478, 56.47826, 54.47826, 54.42222, 55.00000, 55.27027, 54.94595, 55.89189, 54.35135, 53.86486, 54.24324,
        54.32432, 54.37838, 55.16667, 53.72973, 53.72973, 53.25714, 53.67568, 53.58333, 54.45946, 54.72973, 53.94595, 55.10811, 54.64286, 53.21429, 55.14286,
        52.25000, 54.75000, 54.10714, 55.96429, 57.60000, 54.90000, 56.20000, 56.90000)
#Balkendiagramm
barplot(vec, 
        main = "Überschrift", 
        xlab = "x-Achse", 
        ylab = "y-Achse", 
        names.arg = 1:38, #Beschriftung jedes Balkens auf der x-Achse, ggf. schätzen
        col = "white", 
        ylim = c(0,60)) #schätzen

#names = df$string <- Auch möglich

### Balkendiagramm zur Veranschaulichung der empirischen Dichte ###
#Vorbereitendes
handball = read.table("handball.csv", header=T, sep=";")
handball$tore = handball$tore_mannschaft1 + handball$tore_mannschaft2

#Tore in einem Handballspiel mithilfe eines Balkendiagramms darstellen
ws_t = c()
tore_sort = sort(unique(handball$tore))
for(i in 1:length(tore_sort)){
  relevante_daten = handball[handball$tore == tore_sort[i],] #Data Frame mit allen Toren von Anzahl i Tore
  ws_t[i] = nrow(relevante_daten)/nrow(handball) #Anzahl Spiele mit i Toren / Gesamtanzahl Spiele 
}

barplot(ws_t, 
        main = "Anzahl Tore pro Spiel", 
        xlab = "Tore", 
        ylab = "Wahrscheinlichkeit", 
        names = tore_sort, 
        col = c("#e4685a"))

legend("topright", legend=c("Empirisch"), fill = c("#e4685a"))

#Wahrscheinlichkeitsfunktion / diskrete Dichtefunktion (hier Possionsverteilung) mit empirischen Dichte
#in ein Balkendiagramm zeichnen
#Possionsverteilungsvektor erstellen
p_t = dpois(tore_sort, 55) 

data = data.frame(empirisch = ws_t,
                  poisson = dpois(tore_sort, 55)) 

barplot(t(as.matrix(data)),
        beside=TRUE, 
        main = "Anzahl Tore pro Spiel", 
        xlab = "Tore", 
        ylab = "Wahrscheinlichkeit", 
        names.arg = tore_sort, 
        col = c("#e4685a", "#847a7d"))

legend("topright", legend=c("Empirisch", "Theoretisch"), fill = c("#e4685a", "#847a7d"))




#
#         ####
#         ####
#     ##  ####
#  #  ##  ####
#  #  ##  ####
#  #  ##  ####
#  #  ##  ####
###############

#-----------------
#-- Histogramme --
#-----------------
#Klassenarten
sturges <- round(1+log2(nrow(df)), 0)
rice <- round(2*(nrow(df)^(1/3)), 0)
quadrat <- round(sqrt(nrow(df)), 0)

#Histogramm mit Dichte auf der y-Achse, relative Häufigkeiten h(Ak) BSP. MIT KLASSEN STURGES!
hist(df$int1, 
     freq = FALSE, probability = TRUE, 
     breaks = sturges,
     xlab = "X-Achse Spaltenbeschriftung",
     ylab = "Dichte",
     main = "Überschrift") 

#Histogramm mit Häufigkeit auf der y-Achse, absolute Häufigkeiten H(ak)
hist(df$int1, 
     xlab = "X-Achse Spaltenbeschriftung",
     ylab = "Häufigkeit",
     main = "Überschrift")

#Paarweise Darstellung, mehrere Histogramme nebeneinander; Erste Zahl: Wie viele Reihen? Zweite Zahl: Wie viele Spalten?
par(mfrow = c(1, 2))
hist(df$int1, 
     xlab = "X-Achse Spaltenbeschriftung",
     ylab = "Häufigkeit",
     main = "Überschrift")
hist(df$int1, 
     xlab = "X-Achse Spaltenbeschriftung",
     ylab = "Häufigkeit",
     main = "Überschrift")




#            _
#          _|
#        _|
#      _|
#    _|
#  _|
#_|
###############

#----------------------------------------------------------------
#-- diskrete Dichtefunktionen / diskrete Verteilungsfunktionen --
#----------------------------------------------------------------
#Grundsätzliches:
#d...() -> P(X = x), plot gibt diskrete Dichtefunktion wieder
#p...() -> P(X <= q), plot gibt diskrete Verteilungsfunktion wieder
#r...() -> Vector mit Zufallsvariablen
n = 10
set.seed(55)
vec = c(41,36,25,36,41,32,41,36,32,25,36,36,41,25,36,25)

#Empirische Verteilungsfunktion zeichnen basierend auf einem Vektor 
plot(ecdf(vec))

###########################
### Binominalverteilung ###
###########################
#P(X = x)
dbinom(x = 10, size = 150, prob = 0.1)

#P(X <= q)
pbinom(q = 10, size = 150, prob = 0.1)

#Zufallsvariable, gibt Häufigkeiten zurück
rbinom(n, size=150, prob = 0.1)


####################################
### Hypergeometrische Verteilung ###
####################################
#Erklärung:
# Weiße und Schwarze Kugeln in einer Urne
#x = k Kugeln die von der Variante M mindestens gezogen werden soll
#m = M weiße Kugeln
#n = not(M) also das Gegenteil von weißen Kugeln, also schwarze Kugeln
#k = n Anzahl zu ziehenden Kugeln
#dhyper(x = k, m = M, n = not(M) , k = n)

#P(X = x)
dhyper(x = 1, m = 20, n = 80, k = 5)

#P(X <= q)
phyper(q = 1, m = 20, n = 80, k = 5)

#Zufallsvariable, gibt Häufigkeiten zurück
rhyper(n, 20, 80, 5)

##########################
### Possionsverteilung ###
##########################
#(x, Erwartungswert)
#P(X = x)
dpois(x = 55,lambda = 55) #0.05371192

#P(X <= x) , Wahrscheinlichkeit das die Zahl <= des übergebenen Wertes ist
ppois(q = 55,lambda = 55) #0.5357791

#Zufallsvariable, gibt Häufigkeiten zurück
rpois(n, lambda = 55)


#--------------------------------------------------------------
#-- stetige Dichtefunktionen / stetige Verteilungsfunktionen --
#--------------------------------------------------------------
#Grundsätzliches:
#d...() -> P(X = x), plot gibt stetige Dichtefunktion wieder
#p...() -> P(X <= q), plot gibt stetige Verteilungsfunktion wieder
#r...() -> Vector mit Zufallsvariablen

#Zufallsvariable initialisieren, n = Anzahl Durchführungen
n = 10
set.seed(55)
library(extraDistr) #Für Gleichverteilung

#########################
### Gleichverteilung ####
#########################
#P(X = x)
ddunif(x = 3, min = 1, max = 5)

#P(X <= q)
pdunif(q = 3, min = 1, max =5)


#Zufallsvariable, gibt Häufigkeiten zurück
rdunif(n, 1, 5)


#############################
### Exponentialverteilung ###
#############################
#P(X = x)
dexp(x = 10, rate = 1/20)

#P(X <= q)
pexp(q = 10, rate = 1/20)

#Zufallsvariablen
rexp(n, rate=1/20)

########################
### Normalverteilung ###
########################
#P(X = x)
dnorm(x = 8000, mean = 8000 , sd = 100)

#P(X <= q)
pnorm(q = 8000, mean = 8000 , sd = 100)

#Zufallsvariable, gibt Häufigkeiten zurück
rnorm(n, mean=8000, sd=100)

###########################
### Lognormalverteilung ###
###########################
#meanlog = Mittelwert, sdlog = Standardabweichung
#P(X = x)
dlnorm(x = 3, meanlog = 2, sdlog = 1)

#P(X <= q)
plnorm(q = 3, meanlog = 2, sdlog = 1)

#Zufallsvariable, gibt Häufigkeiten zurück
rlnorm(n, meanlog = 0, sdlog = 1)

#################
### Zeichnen ####
#################
#empirische Verteilungsfunktion zeichnen
p_verteilung <- rnorm(n, mean = 8000, sd = 100)
plot(ecdf(p_verteilung),pch=".")
#theoretische diskrete Verteilungsfunktion hinzufügen
curve(pnorm(x, mean = 8000, sd = 100),add=TRUE,col="blue") 

#weiteres Beispiel mit Possionsverteilung
p_verteilung <- rpois(n,lambda = 55)
plot(ecdf(p_verteilung),pch=".")
#theoretische diskrete Verteilungsfunktion hinzufügen
curve(ppois(x, lambda = 55),add=TRUE,col="blue") 


#----------------
#-- Clustering --
#----------------
#Vorgehen:
#Man braucht ein Dataframe mit Daten, die man zu einer Distanzmatrix umwandeln kann
#Z.B. Dataframe mit den Spalten discount_price, old_price und latest_price
#Dann skaliert man die Daten und erstellt eine Distanzmatrix
#Auf die Distanzmatrix kann man dann ein Clusterverfahren anwenden. Zusätlich kann man sich ein Dendrogramm erstellen

#Vorbereitende Schritte
laptops = read.table("laptops.csv", header=TRUE, sep=",", dec=".")
laptops$discount_price <- laptops$latest_price * (1 - (laptops$discount / 100))
apple = laptops[laptops$brand == "APPLE",]
apple = apple[,c("discount_price", "old_price", "latest_price")]


#Zellenwerte skalieren
apple_scale = apply(apple,2,scale) #2 = the manipulation is performed on columns
row.names(apple_scale) = row.names(apple) #IDs aus dem orginalen Data Frame an den Cluster Data Frame übertragen

#Distanzmatrix erstellen
dist_mat <- dist(apple_scale, method = "euclidean")

#Art zu Clustern festlegen
c_ward <- hclust(dist_mat, method = "ward.D2")
#Alternative Clusterarten
c_compl <- hclust(dist_mat, method="complete")
c_single <- hclust(dist_mat, method = "single")


#Cluster als Dendrogramm darstellen 
plot(c_ward,
     main = "Ward Clustering",
     xlab = "Preis",
     ylab = "Distanz")

#Cluster aufteilen
c_ward_clusters <- cutree(c_ward,2)
laptops[names(c_ward_clusters)[c_ward_clusters==1],]
laptops[names(c_ward_clusters)[c_ward_clusters==2],]



#     -
#     |
#    ___
#   |   |
#   |   |
#   |___|
#     |
#     -
###############

#-----------------------
#-- Boxplot / Quantil --
#-----------------------
#Boxplot
boxplot(df$int1, 
        xlab = "x-Achse",
        ylab = "y-Achse", 
        ylim = c(0,100)) #ggf. Schätzen

#Paarweise Darstellung
par(mfrow = c(1,3)) #1 = Zeilen, 3 = Spalten

#---------------
#-- Pie Chart --
#---------------
#Pie Chart
t = table(df$string) #Irgendeine Art Aufteilung muss möglich sein. Z.B. Spalte mit wiederholten Einträgen von der Unternehmensgröße (Klein, Mittel, Groß) 
pie(t,
    main = "Überschrift")

#-------------------------------------------------
#-- String Ausgabe manipulieren / Zusammenfügen --
#-------------------------------------------------
print(paste(df$int1, df$string, sep = " "))
print(paste("Hallo", "Welt", sep = " "))
print(paste("1", paste("2", " = 3",sep = " "), sep =" + "))

