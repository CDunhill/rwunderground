# https://github.com/ALShum/rwunderground
# https://cran.r-project.org/web/packages/rwunderground/rwunderground.pdf

rwunderground::set_api_key("YOUR KEY")
# Note: by default units are in imperial (temperature is F, windspeed in MPH etc.) -- sorry rest of the world!
# To use metric, you can set use_metric = TRUE for many of the functions.

library (rwunderground)
location <- set_location(territory = "GB", city = "London")


# History
history(location, date = 20180102, use_metric = TRUE)

# History Date Range
history <- history_range(location, date_start="20171225", date_end="20171231", message=TRUE, use_metric = TRUE)
View (history)

#### NEED TO INSERT COLUMN FOR LOCATION INTO DATA WHEN MULTIPLE LOCATIONS ####

# Forecast
lon_for_day <- forecast10day(location, use_metric = TRUE)
lon_for_day

lon_for_hour <- hourly10day(location, use_metric = TRUE)
lon_for_hour


#### NEED TO INSERT COLUMN FOR LOCATION INTO DATA WHEN MULTIPLE LOCATIONS ####

