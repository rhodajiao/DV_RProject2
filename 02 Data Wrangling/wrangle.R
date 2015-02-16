birds_numeric <- birds %>% mutate(Latitude=as.numeric(as.character(LATITUDE)), Longitude=as.numeric(as.character(LONGITUDE))) 
species_loc <- birds_numeric %>% filter(Latitude >= 0 | Latitude <= 0) %>% filter(Longitude >= 0 | Longitude <= 0) %>% group_by(Genus=GENUS, Species=SPECIES) %>% summarise(Latitude=median(Latitude), Longitude=median(Longitude), Number=n()) %>% tbl_df
print(species_loc)

# Gets all of the birds in the genus Larus in the Southeastern hemisphere
birds %>% select(SPECIES, GENUS, LATITUDE, LONGITUDE) %>% filter(LATITUDE<0 & LONGITUDE>0 & GENUS == 'Larus') %>% tbl_df

# Gets all of the species of birds in the genus Sterna in both the United States and Mongolia
birds %>% select(SPECIES, GENUS,COUNTRY) %>% filter(GENUS == 'Sterna' & COUNTRY %in% c('United States of America', 'Mongolia')) %>% tbl_df

# Gets latitude and longitude of all birds of the species glareola
latlongGlareola <- birds %>% select(LATITUDE,LONGITUDE,SPECIES) %>% filter(SPECIES == 'glareola') %>% tbl_df

# Lists the unique species of bird in each country
uniqueByCountry <- birds %>% select(COUNTRY,SPECIES) %>% distinct() %>% arrange(COUNTRY) %>% tbl_df

