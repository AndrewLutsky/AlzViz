install.packages("tidytuesdayR")
scurvy <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-07-25/scurvy.csv')
scurvy <- scurvy[,c(-1, -8)]
list1 <- scurvy$gum_rot_d6
list2 <- c() #must declare variable before altering in a for loop
for (i in list1) {
  #substring is keeping only what is in the first place of each item in the list
  #as.integer is casting (changing) the character data type into integer data type
  #append changes what is in a list, but must be set equal to the name of the list to keep the change
  list2 <- append(list2, as.integer(substr(i, 0, 1)))
} 
#to change this column (gum_rot_d6) in the scurvy dataset, we input the changes we made on list2
scurvy$gum_rot_d6 <- list2
#then repeat this for each symptom column in scurvy

list3 <- scurvy$skin_sores_d6
list4 <- c()
for (i in list3) {
  list4 <- append(list4, as.integer(substr(i,0, 1)))
}
scurvy$skin_sores_d6 <- list4

list5 <- scurvy$weakness_of_the_knees_d6
list6 <- c()
for (i in list5) {
  list6 <- append(list6, as.integer(substr(i, 0, 1)))
}

scurvy$weakness_of_the_knees_d6 <- list6

list7 <- scurvy$lassitude_d6
list8 <- c()
for (i in list7) {
  list8 <- append(list8, as.integer(substr(i, 0, 1)))
}
scurvy$lassitude_d6 <- list8
