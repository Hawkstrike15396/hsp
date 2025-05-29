library(patchwork)

p1 <- clean_data |>
  select(intro_extro, 
         intuit_sense, 
         feel_think, 
         judge_perceive, 
         class_productivity
         ) |>
  ggplot(aes(x = class_productivity)) +
    geom_bar() +
    facet_wrap(~intro_extro) +
    labs(x = "Productivité en classe (de 1 à 6)", 
         y = "Compte")

p2 <- clean_data |>
  select(intro_extro, 
         intuit_sense, 
         feel_think, 
         judge_perceive, 
         class_productivity
  ) |>
  ggplot(aes(x = class_productivity)) +
    geom_bar() +
    facet_wrap(~intuit_sense) +
    labs(x = "Productivité en classe (de 1 à 6)", 
         y = "Compte")

p3 <- clean_data |>
  select(intro_extro, 
         intuit_sense, 
         feel_think, 
         judge_perceive, 
         class_productivity
  ) |>
  ggplot(aes(x = class_productivity)) +
    geom_bar() +
    facet_wrap(~feel_think) +
    labs(x = "Productivité en classe (de 1 à 6)", 
         y = "Compte")

p4 <- clean_data |>
  select(intro_extro, 
         intuit_sense, 
         feel_think, 
         judge_perceive, 
         class_productivity
  ) |>
  ggplot(aes(x = class_productivity)) +
    geom_bar() +
    facet_wrap(~judge_perceive) +
    labs(x = "Productivité en classe (de 1 à 6)", 
         y = "Compte")

(p1 | p2) / (p3 | p4) + 
  plot_annotation(title = "Productivité en classe par type MBTI")
