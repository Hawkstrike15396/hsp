library(patchwork)

p1 <- clean_data |>
  select(intro_extro, 
         self_improvement
  ) |>
  ggplot(aes(x = self_improvement)) +
  geom_bar() +
  facet_wrap(~intro_extro) +
  labs(x = "Amélioration de soi (de 1 à 6)", 
       y = "Compte")

p2 <- clean_data |>
  select(intuit_sense, 
         self_improvement
  ) |>
  ggplot(aes(x = self_improvement)) +
  geom_bar() +
  facet_wrap(~intuit_sense) +
  labs(x = "Amélioration de soi (de 1 à 6)", 
       y = "Compte")

p3 <- clean_data |>
  select(feel_think, 
         self_improvement
  ) |>
  ggplot(aes(x = self_improvement)) +
  geom_bar() +
  facet_wrap(~feel_think) +
  labs(x = "Amélioration de soi (de 1 à 6)", 
       y = "Compte")

p4 <- clean_data |>
  select(judge_perceive, 
         self_improvement
  ) |>
  ggplot(aes(x = self_improvement)) +
  geom_bar() +
  facet_wrap(~judge_perceive) +
  labs(x = "Amélioration de soi (de 1 à 6)", 
       y = "Compte")
# dunno why but you gotta run the last line again before it works :/
((p1 | p2) / (p3 | p4)) + 
  plot_annotation(title = "Amélioration de soi par type MBTI")

# I would ggsave this but idk the aspect ratio we going for lol