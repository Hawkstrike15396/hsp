library(patchwork)

p1 <- clean_data |>
  select(intro_extro, 
         study_motivation
  ) |>
  ggplot(aes(x = study_motivation)) +
  geom_bar() +
  facet_wrap(~intro_extro) +
  labs(x = "Motivation à étudier (de 1 à 6)", 
       y = "Compte")

p2 <- clean_data |>
  select(intuit_sense, 
         study_motivation
  ) |>
  ggplot(aes(x = study_motivation)) +
  geom_bar() +
  facet_wrap(~intuit_sense) +
  labs(x = "Motivation à étudier (de 1 à 6)", 
       y = "Compte")

p3 <- clean_data |>
  select(feel_think, 
         study_motivation
  ) |>
  ggplot(aes(x = study_motivation)) +
  geom_bar() +
  facet_wrap(~feel_think) +
  labs(x = "Motivation à étudier (de 1 à 6)", 
       y = "Compte")

p4 <- clean_data |>
  select(judge_perceive, 
         study_motivation
  ) |>
  ggplot(aes(x = study_motivation)) +
  geom_bar() +
  facet_wrap(~judge_perceive) +
  labs(x = "Motivation à étudier (de 1 à 6)", 
       y = "Compte")
# dunno why but you gotta run the last line again before it works :/
combined_plot <- ((p1 | p2) / (p3 | p4)) + 
  plot_annotation(title = "Motivation à étudier par type MBTI")

ggsave("study_motivation_graph.png", 
       plot = combined_plot, 
       path = "cache", 
       width = 5, 
       height = 5)
