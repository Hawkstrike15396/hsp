# Define a shared theme and label
common_theme <- theme_void() + theme(legend.position = "bottom")
common_labs <- labs(fill = "Temps étudié")

# Each plot with consistent theming and labels
p1 <- clean_data |>
  ggplot(aes(x = "", fill = daily_study_time)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~intro_extro) +
  common_theme + common_labs

p2 <- clean_data |>
  ggplot(aes(x = "", fill = daily_study_time)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~intuit_sense) +
  common_theme + common_labs

p3 <- clean_data |>
  ggplot(aes(x = "", fill = daily_study_time)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~feel_think) +
  common_theme + common_labs

p4 <- clean_data |>
  ggplot(aes(x = "", fill = daily_study_time)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~judge_perceive) +
  common_theme + common_labs

# Combine and assign to a variable
combined_plot <- (p1 | p2) / (p3 | p4) +
  plot_layout(guides = "collect") +
  plot_annotation(title = "Temps étudié par type MBTI") &
  theme(legend.position = "bottom")

# Save
ggsave("daily_study_time_graph.png", 
       plot = combined_plot, 
       path = "cache", 
       width = 6, 
       height = 5)
