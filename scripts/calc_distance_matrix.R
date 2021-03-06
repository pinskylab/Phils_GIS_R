### List of source locations
list1 <- data.frame(longitude = c(80.15998, 72.89125, 77.65032, 77.60599, 
                                  72.88120, 76.65460, 72.88232, 77.49186, 
                                  72.82228, 72.88871), 
                    latitude = c(12.90524, 19.08120, 12.97238, 12.90927, 
                                 19.08225, 12.81447, 19.08241, 13.00984,
                                 18.99347, 19.07990))

### List of destination locations
list2 <- data.frame(longitude = c(72.89537, 77.65094, 73.95325, 72.96746, 
                                  77.65058, 77.66715, 77.64214, 77.58415,
                                  77.76180, 76.65460), 
                    latitude = c(19.07726, 13.03902, 18.50330, 19.16764, 
                                 12.90871, 13.01693, 13.00954, 12.92079,
                                 13.02212, 12.81447))

library(geosphere)

# create distance matrix in meters using the function distVincentyEllipsoid
# the WGS84 ellipsoid is used by default, as it's the best available global ellipsoid
# can change the a, b, and f parameters for a desired ellipsoid
# see ?distVincentyEllipsoid for details
mat <- distm(list1[,c('longitude','latitude')], list2[,c('longitude','latitude')], fun=distVincentyEllipsoid)

# Create a distance column in meters from a data.frame that has both points 
loc.df <- data.frame(lon1=list1$longitude, lat1=list1$latitude, 
                     lon2=list2$longitude, lat2=list2$latitude)
loc.df$dist <- distGeo(loc.df[,c('lon1', 'lat1')], loc.df[,c('lon2', 'lat2')])
