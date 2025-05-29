# This is quite positively revolting.

# But anyways, all 4 MBTI types were used as it made the best model
# However lowkey the only ones that had somewhat substantial effects are
# Perceiving vs judging (quite consistently), and intuitive vs sensing
# which is only for a couple of them, and when cut down to just 
# n vs s and p vs j, n vs s had much lower effects than in the whole model
# But again, all 4 types were used for a better model.

fit_class_productivity <- brm(
  formula = class_productivity ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_mark_contentness <- brm(
  formula = mark_contentness ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_motivation <- brm(
  formula = study_motivation ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_type <- brm(
  formula = study_type ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_improvement <- brm(
  formula = self_improvement ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_pressure <- brm(
  formula = self_pressure ~ intro_extro + intuit_sense + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)