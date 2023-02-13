# R_in_a_nutshell
Es handelt sich hierbei um eine Zusammenstellung von nützlichen R-Funktionen. Anhand von Beispieldatensätzen können alle enhaltenen Funktionen getestet werden. Zum schnelleren Wiederfinden von bestimmten R-Funktionen habe ich die Kapitel gesondert gekennzeichnet und teilweise mit eindrucksvollen Symbolen versehen. Die eigens erstellte [uebungsdatei.csv](uebungsdatei.csv) dient nur als Beispieldatei und bietet daher leider wenig Spielraum für tiefergehende statistische Schlussfolgerungen. :(

## Nutzung
Folgende Funktion ändert den Dateipfad des Standard R-Directorys. Gegebenfalls muss dieser für die eigene Verwendung angepasst werden. Er befindet sich in den oberen Zeilen von [R_Analyse_Daten.R](R_Analyse_Daten.R):
```
setwd("~/R-Projekte/learn_R")
```

## Aufbau Datensätze
[uebungsdatei.csv](uebungsdatei.csv) repräsentiert durch ***df***

| | id | int1 | int2 | bool | string | date |  
| --- | --- | --- |--- | ---| --- | --- |
| 1 | 1 | 34 | 6 | TRUE | Afghanistan | 01.01.2022|
| 2 | ... | ... | ... | ... | ... | ... |

[time_series_covid19_confirmed_11-16-2022.rda](time_series_covid19_confirmed_11-16-2022.rda) repräsentiert durch ***corona***
| | Afghanistan | Albania | Algeria | Angola | ... |  
| --- | --- |--- | ---| --- | --- |
| 2020-01-22 | 0 | 0 | 0 | 0 | ... |
| 2020-01-23 | ... | ... | ... | ... | ... |


[handball.csv](handball.csv) repräsentiert durch ***handball***
|  | saison | spieltag | spiel | tore_mannschaft1 | tore_mannschaft2 |  
| --- | --- |--- | ---| --- | --- |
| 1 | 22/23 | 1 | 1 | 25 | 22 |
| 2 | ... | ... | ... | ... | ... |

[laptop.csv](laptop.csv) repräsentiert durch ***laptops***
Datensatz zu groß, um ihn hier darzustellen. Dieser wird für das Clustering genutzt.


## Quellen
[time_series_covid19_confirmed_11-16-2022.rda](time_series_covid19_confirmed_11-16-2022.rda) stammt modifiziert aus folgendem Datensatz: https://github.com/CSSEGISandData/COVID-19

[handball.csv](handball.csv) ist zusammengestellt aus Informationen folgender Quelle: https://www.ndr.de/sport/handball/index.html
	
