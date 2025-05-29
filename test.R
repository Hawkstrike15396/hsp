fit_class_productivity1 <- brm(
  formula = class_productivity ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_class_productivity2 <- brm(
  formula = class_productivity ~ intuit_sense + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_mark_contentness1 <- brm(
  formula = mark_contentness ~ intuit_sense + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_mark_contentness2 <- brm(
  formula = mark_contentness ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_motivation1 <- brm(
  formula = study_motivation ~ intro_extro + feel_think + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_type1 <- brm(
  formula = study_type ~ intuit_sense + judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_type2 <- brm(
  formula = study_type ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)


fit_study_type3 <- brm(
  formula = study_type ~ intuit_sense, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_improvement1 <- brm(
  formula = self_improvement ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_pressure1 <- brm(
  formula = self_pressure ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)