library(patchwork)

p1 <- clean_data |>
  select(intro_extro, 
         mark_contentness
  ) |>
  ggplot(aes(x = mark_contentness)) +
  geom_bar() +
  facet_wrap(~intro_extro) +
  labs(x = "Satisfaction des notes (de 1 à 6)", 
       y = "Compte")

p2 <- clean_data |>
  select(intuit_sense, 
         mark_contentness
  ) |>
  ggplot(aes(x = mark_contentness)) +
  geom_bar() +
  facet_wrap(~intuit_sense) +
  labs(x = "Satisfaction des notes (de 1 à 6)", 
       y = "Compte")

p3 <- clean_data |>
  select(feel_think, 
         mark_contentness
  ) |>
  ggplot(aes(x = mark_contentness)) +
  geom_bar() +
  facet_wrap(~feel_think) +
  labs(x = "Satisfaction des notes (de 1 à 6)", 
       y = "Compte")

p4 <- clean_data |>
  select(judge_perceive, 
         mark_contentness
  ) |>
  ggplot(aes(x = mark_contentness)) +
  geom_bar() +
  facet_wrap(~judge_perceive) +
  labs(x = "Satisfaction des notes (de 1 à 6)", 
       y = "Compte")

plot <- ((p1 | p2) / (p3 | p4)) + 
  plot_annotation(title = "Satisfaction des notes par type MBTI")

print(plot)