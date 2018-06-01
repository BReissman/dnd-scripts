# Dungeons and Dragons R Functions
# Authors: Benjamin Reissman
# Created May 28, 2018; Last updated May 29, 2018

CharGen <- function(Str = 10, Dex = 10, Con = 10, Int = 10, Wis = 10, Cha = 10) {
  Str <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Str) <- 3
  Dex <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Dex) <- 3
  Con <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Con) <- 3
  Int <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Int) <- 3
  Wis <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Wis) <- 3
  Cha <- sort(sample(x = c(1:6), size = 4, replace = T), decreasing = T)
    length(Cha) <- 3
  matrix(data = c(Str, Dex, Con, Int, Wis, Cha), byrow = T, ncol = 3)
  Stats <- paste("Str", sum(Str), ", Dex", sum(Dex), ", Con", sum(Con), ", Int", sum(Int), ", Wis", sum(Wis), ", Cha", sum(Cha)) 
  assign("Stats",value = Stats, envir = .GlobalEnv)
  return(Stats) }
  # Generates "3 best of 4d6" stats for you in a string. Cannot assign numbers.

D <- function(dice1 = 1, top1 = 20, dice2 = 0, top2 = 20, dice3 = 0, top3 = 20, All) {
  All <- c((sample(1:top1, size = dice1, replace = T)), sample(1:top2, size = dice2, replace = T), sample(1:top3, size = dice3, replace = T))
  All}
  # Rolls dice of up to three different sizes for you, of unlimited count (dice) and sizes (top). Then presents the list.

DS <- function(dice1 = 1, top1 = 20, dice2 = 0, top2 = 20, dice3 = 0, top3 = 20, All) {
  sum(c(sample(1:top1, size = dice1, replace = T)), sample(1:top2, size = dice2, replace = T), sample(1:top3, size = dice3, replace = T)) }
  # Rolls and sums dice of up to three different sizes for you, of unlimited count (dice) and sizes (top). Then presents the list.
