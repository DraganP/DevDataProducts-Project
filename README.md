# DevDataProducts-Project

Course project for Coursera Developing Data Products class

For the purpose of creating a simple interactive app, I decided to use the mtcars dataset and predict MPG (miles per gallon) as a function of several variables. To make this simpler, I didn't use the best model from the Regression Models class, but decided to use just three variables: weight of the vehicle, type of transmission (Auto/Man) and number of engine cylinders (4/6/8).
    
I converted transmission type and number of cylinders into factor variables, and ran the following model:
    simpleModel <- lm(mpg ~ am + cyl + wt, mtcars)
    summary(simpleModel) gives the coefficients:
    
                        Estimate Std. Error t value Pr(>|t|)    
        (Intercept)  33.7536     2.8135  11.997  2.5e-12 ***
        amMan         0.1501     1.3002   0.115  0.90895    
        cyl6         -4.2573     1.4112  -3.017  0.00551 ** 
        cyl8         -6.0791     1.6837  -3.611  0.00123 ** 
        wt           -3.1496     0.9080  -3.469  0.00177 ** 
    
My app lets the user select the transmission type (Auto/Man) and number of engine cylinders (4/6/8), both via radio          buttons. It also lets the user select the weight of the vehicle using a slider, between 1,500 lbs and 5,500 lbs (the lightest and the heaviest vehicles in the mtcars dataset) in 100 lb increments, and converted to 1,000s of lbs to match the wt coefficient in the dataset. Depending on the combination of the two factor variables I calculated the intercept and then used simple linear regression, where calculated intercept is "a" and weight coefficient is "b".
    
    Predicted MPG = a + b * weight (1)
    
I calculated the intercept based on the combination of transmission type and number of engine cylinders in the following manner: since there are six possible combinations of those two factor variables, I had to calculate six intercepts. The following table explains that calculation, with coefficients rounded to 2 decimal points. The components of the intercept are taken straight from the summary of the simpleModel above.
    
    Trans.	# of cyl. 	Intercept
    Man	    4	        33.75 + 0.15
    Man	    6       	33.75 + 0.15 - 4.26
    Man	    8	        33.75 + 0.15 - 6.08
    Auto	4	        33.75
    Auto	6	        33.75 - 4.26
    Auto	8	        33.75 - 6.08

Since there are six different intercepts, there are six versions of the equation (1) shown above, where each value of the intercept from the table corresponds to one value of the "a" variable. But there is only one value of the "b", i.e. the weight coefficient, which is also taken from the simpleModel summary and it equals 3.15 (rounded to 2 decimals).

By selecting the transmission type and number of engine cylinders, the user effectively selects which of the six linear equations will be used to calculate MPG based on vehicle weight as the only remaining independent variable.

Example: we want to estimate MPG of a car with 8 cylinders and a manual transmission, weighing 3,400 lbs (or 3.4 in 1,000s of lbs). The intercept for this combination will be (33.75 + 0.15 - 6.08 = 27.82). The equation then becomes:

    Predicted MPG = 27.82 + 3.15 * 3.4 = 17.12
