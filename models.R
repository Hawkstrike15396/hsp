# This is quite positively revolting.

# I tried several combinations, it seemed that judge_perceive had the best model
# quite consistently, and even in the models with all 4 types it always
# had the largest impact of the 4. Which is quite interesting. 

fit_class_productivity <- brm(
  formula = class_productivity ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_mark_contentness <- brm(
  formula = mark_contentness ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_motivation <- brm(
  formula = study_motivation ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_study_type <- brm(
  formula = study_type ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_improvement <- brm(
  formula = self_improvement ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)

fit_self_pressure <- brm(
  formula = self_pressure ~ judge_perceive, 
  data = clean_data, 
  family = cumulative(), 
  refresh = 0, 
  silent = 2
)