library(plumber)
library(dplyr)
library(explore)

#* @apiTitle Cars API
#* @apiDescription API exposing sample data for cars.

#* List
#* @get /cars-list
function() {
  Data_Cars = mtcars
  rownames(Data_Cars)
}

#* Plot a histogram
#* @serializer png
#* @get /plot
function() {
  mtcars %>% 
    select(gear, mpg, hp, cyl, am) %>% 
    explore_all(target = gear)
}

#* Return the details of a car
#* @param row The car you want info about
#* @post /sum
function() {
    as.numeric(a) + as.numeric(b)
}

# Programmatically alter your API
#* @plumber
function(pr) {
    pr %>%
        # Overwrite the default serializer to return unboxed JSON
        pr_set_serializer(serializer_unboxed_json())
}
