p1 <- clean_data |>
  select(intro_extro, 
         self_pressure
  ) |>
  ggplot(aes(x = self_pressure)) +
  geom_bar() +
  facet_wrap(~intro_extro) +
  labs(x = "Pression sur soi (de 1 à 6)", 
       y = "Compte")

p2 <- clean_data |>
  select(intuit_sense, 
         self_pressure
  ) |>
  ggplot(aes(x = self_pressure)) +
  geom_bar() +
  facet_wrap(~intuit_sense) +
  labs(x = "Pression sur soi (de 1 à 6)", 
       y = "Compte")

p3 <- clean_data |>
  select(feel_think, 
         self_pressure
  ) |>
  ggplot(aes(x = self_pressure)) +
  geom_bar() +
  facet_wrap(~feel_think) +
  labs(x = "Pression sur soi (de 1 à 6)", 
       y = "Compte")

p4 <- clean_data |>
  select(judge_perceive, 
         self_pressure
  ) |>
  ggplot(aes(x = self_pressure)) +
  geom_bar() +
  facet_wrap(~judge_perceive) +
  labs(x = "Pression sur soi (de 1 à 6)", 
       y = "Compte")
# dunno why but you gotta run the last line again before it works :/
combined_plot <- ((p1 | p2) / (p3 | p4)) + 
  plot_annotation(title = "Pression sur soi par type MBTI")

ggsave("self_pressure_graph.png", 
       plot = combined_plot, 
       path = "cache", 
       width = 5, 
       height = 5)
