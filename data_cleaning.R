results <- read_csv("results.csv")

clean <- results |>
  select(
    intro_extro = contains("introverted"), 
    intuit_sense = contains("intuitive"), 
    feel_think = contains ("feeling"), 
    judge_perceive = contains("perceiving"), 
    fav_subject = contains("your favorite subject"), 
    unfav_subject = contains("least favorite subject"), 
    school_program = contains("ALP"), 
    daily_study_time = contains("On average"), 
    after_school_plan = contains("plan"), 
    class_productivity = contains("class time"), 
    mark_contentness = contains("content"), 
    study_motivation = contains("motivated"), 
    study_type = contains("burst"), 
    self_improvement = contains("better and better"), 
    self_pressure = contains("pressure")
  )

write_rds(clean, "cache/clean_data.rds")
