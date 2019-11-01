library(tidyverse)
library(crayon)

# Global functions

# getting world parameters
get_parameters <- function() {
    grid_x <- readline("Enter x parameter: ")
    grid_y <- readline("Enter y parameter: ")
    parameters <- tibble(grid_x, grid_y)
    print(paste("A", grid_x, "x", grid_y, "world will be generated!"))
    parameters
}

draw_base <- function(grid_x, grid_y, ground = ".") {
    world <- data.frame(ncol = grid_x, nrow = grid_y)
    for (i in seq(1, grid_y)){
        for (j in seq(1, grid_x)){
            world[j,i] <- as.character(ground)      
    }

    }
world
}

find_grid <- function(x,y, world){
    world[x,y]
}
