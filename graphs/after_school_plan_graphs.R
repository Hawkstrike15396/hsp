# Define a shared theme and label
common_theme <- theme_void() + theme(legend.position = "bottom")
common_labs <- labs(fill = "Plan après lycée")

# Each plot with consistent theming and labels
p1 <- clean_data |>
  ggplot(aes(x = "", fill = after_school_plan)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~intro_extro) +
  common_theme + common_labs

p2 <- clean_data |>
  ggplot(aes(x = "", fill = after_school_plan)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~intuit_sense) +
  common_theme + common_labs

p3 <- clean_data |>
  ggplot(aes(x = "", fill = after_school_plan)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~feel_think) +
  common_theme + common_labs

p4 <- clean_data |>
  ggplot(aes(x = "", fill = after_school_plan)) +
  geom_bar(width = 1, position = "fill") +
  coord_polar("y", start = 0) +
  facet_wrap(~judge_perceive) +
  common_theme + common_labs

# Combine and assign to a variable
combined_plot <- (p1 | p2) / (p3 | p4) +
  plot_layout(guides = "collect") +
  plot_annotation(title = "Plan après lycée par type MBTI") &
  theme(legend.position = "bottom")

# Save
ggsave("after_school_plan_graph.png", 
       plot = combined_plot, 
       path = "cache", 
       width = 6, 
       height = 5)
