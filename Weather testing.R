# https://github.com/ALShum/rwunderground
# https://cran.r-project.org/web/packages/rwunderground/rwunderground.pdf

# rwunderground::set_api_key("YOUR KEY")
# Note: by default units are in imperial (temperature is F, windspeed in MPH etc.) -- sorry rest of the world!
# To use metric, you can set use_metric = TRUE for many of the functions.

library (rwunderground)
set_location(territory = "GB", city = "London")


# History
history(set_location(territory = "GB", city = "London"), date = 20170102, use_metric = TRUE)


# Forecast
forecast10day(set_location(territory = "GB", city = "London"), use_metric = TRUE)

lon_for <- hourly10day(set_location(territory = "GB", city = "London"), use_metric = TRUE)
lon_for
