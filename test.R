library(patchwork)

for (var in 1:4) {
  var_name <- names(clean_data)[var]
  
  p <- clean_data |>
    select(.data[[var]], 
           fav_subject
    ) |>
    ggplot(aes(x = "", 
               fill = fav_subject)) +
    geom_bar(width = 1,  
             position = "fill") +
    coord_polar("y", 
                start = 0) +
    facet_wrap(~ .data[[var]]) +
    theme_void() +
    labs(fill = "Sujet préféré")
  
  assign(paste0("x", i), x)
  
}