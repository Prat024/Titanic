############ Observe the structure of Titanic dataset ##########################
str(titanic)

############ Plotting bar plot distribution of sexes on ship ##################
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge")

############ Plotting bar chart with a facet grid based on Survival ############
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  facet_grid(.~Survived)

############# Scatter plot of Class vs Age as a facet grid on Survival #########
# Custom jitter position
posn.j <- position_jitter(0.5, 0)

# Scatter Plot based on jitter
ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) +
  facet_grid(.~Survived)

################################################################################
