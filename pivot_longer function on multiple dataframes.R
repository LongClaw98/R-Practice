 # rekig_income data.frame
relig_income
relig_income %>% 
     pivot_longer(!religion,                # except religion columns 
                  names_to = "income",      # names of the column to new column "income"
                  values_to = "count")      # values to new column name "count"     

 # villboard data.frame

billboard

billboard %>% 
  pivot_longer(
    cols = starts_with("wk"),                        # only columns which start with "wk"
    names_to = "week",                               # all column names which meet above conditions to the column named "week" 
    names_transform = list(week  = as.integer),      # changed the data type of week from char to integer   
    values_to = "ranks",                             # values under the conditioned columns into the new column named "ranks"  
    values_drop_na = TRUE                            # drop values contain na value
    
  )


#who
who
who %>%  
  pivot_longer(cols = new_sp_m014:newrel_f65,
               names_to = c("diagnosis","age","gender"),
               names_pattern = "new_?(.*)_(.)(.*)",
               values_to = "count" )
    
  

who %>% pivot_longer(
  cols = new_sp_m014:newrel_f65,
  names_to = c("diagnosis", "gender", "age"), 
  names_pattern = "new_?(.*)_(.)(.*)",
  names_transform = list(
    gender = ~ readr::parse_factor(.x, levels = c("f", "m")),
    age = ~ readr::parse_factor(
      .x,
      levels = c("014", "1524", "2534", "3544", "4554", "5564", "65"), 
      ordered = TRUE
    )
  ),
  values_to = "count",
)