library(readr)
library(tidyverse)
library(brms)
library(tidybayes)
library(tidymodels)
library(readr)
library(gtsummary)
library(patchwork)

clean_data <- readRDS("cache/clean_data.rds")

# I am too tired to find a better way to do this. 

fit_class_productivity <- readRDS("cache/class_productivity.rds")

fit_mark_contentness <- readRDS("cache/mark_contentness.rds")

fit_self_improvement <- readRDS("cache/self_improvement.rds")

fit_self_pressure <- readRDS("cache/self_pressure.rds")

fit_study_motivation <- readRDS("cache/study_motivation.rds")

fit_study_type <- readRDS("cache/study_type.rds")
