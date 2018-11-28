# Casino winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

poker_wednesday <- poker_vector[3]
poker_wednesday <- poker_vector["Friday"]
poker_wednesday



# Mid-week poker results: poker_midweek
poker_midweek <- poker_vector[c(2,3,4)]

# End-of-week roulette results: roulette_endweek
roulette_endweek <- roulette_vector[c(4,5)]

# Roulette results for Tuesday to Friday inclusive: roulette_subset
roulette_subset <- roulette_vector[2:5]

# Print roulette_subset
roulette_subset

# Select Thursday's roulette gains: roulette_thursday
roulette_thursday <- roulette_vector["Thursday"]

# Select Tuesday's poker gains: poker_tuesday
poker_tuesday <- poker_vector["Tuesday"]


# Select the first three elements from poker_vector: poker_start
poker_start <- poker_vector[1:3]

# Calculate the average poker gains during the first three days: avg_poker_start
avg_poker_start <- mean(poker_start)


#There are basically three ways to subset vectors: by using the indices, 
#by using the names (if the vectors are named) and by using logical vectors. 


# Roulette results for day 1, 3 and 5: roulette_subset
roulette_subset <- roulette_vector[c("Monday","Wednesday","Friday")]

# Poker results for first three days: poker_start
poker_start <- poker_vector[c(TRUE,TRUE,TRUE,FALSE,FALSE)] > 0

# Create logical vector corresponding to profitable poker days: selection_vector
#selection_vector <- poker_vector[c("Monday","Tuesday","Wednesday","Thursday","Friday")] >0

selection_vector <- poker_vector[TRUE] > 0
# Select amounts for profitable poker days: poker_profits
poker_profits <- poker_vector[selection_vector]
poker_profits

# Select amounts for profitable roulette days: roulette_profits
roulette_profits <- roulette_vector[c(3,5)]
roulette_profits
is.numeric(roulette_profits)

# Sum of the profitable roulette days: roulette_total_profit
roulette_total_profit <- sum(roulette_profits)
roulette_total_profit

# Number of profitable roulette days: num_profitable_days
num_profitable_days <- sum(roulette_vector[TRUE] >0)
num_profitable_days

# Select the player's score for the third game: player_third
player_third <- player[3]

# Select the scores where player exceeds house: winning_scores
winning_scores <- player[player> house]

# Count number of times player < 18: n_low_score
n_low_score <- sum(player < 18)


