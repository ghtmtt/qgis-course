# Regressione lineare -----------------------------------------------------

# La regressione lineare è un metodo statistico che permette di predirre 
# il comportamento di una variabile risposta in funzione di una o più variabili
# *predittrici*
# conoscendo il comportamento e l'andamento di due variabili, si può pensare
# di stimare la variabile risposta quando la variabile predittrice ha un certo
# valore


# visione globale del dataset 'iris'
head(iris, 5) #visione delle prime 5 osservazioni
summary(iris) # breve rissunto per ogni variabile



# creazione del modello lineare semplice (variabili Sepal.Length e Sepal.Width)
modello_regressione  <- lm(iris$Sepal.Width[iris$Species == "setosa"]~iris$Sepal.Length[iris$Species == "setosa"])

# la funzione di base è linear model, lm()
help(lm)
# questa funzione calcola molte cose diverse
summary(modello_regressione)

fitted(modello_regressione) -> zz


library("ggplot2") #caricamento pacchetto ggplot2
ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species))+
    geom_point()+
    geom_smooth(method=lm, se=F)
