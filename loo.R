fit_names <- ls(pattern = "^fit")
model_list <- mget(fit_names)
loo_list <- lapply(model_list, loo)
loo_compare(loo_list)
