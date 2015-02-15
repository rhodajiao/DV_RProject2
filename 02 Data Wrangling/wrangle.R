birds_numeric <- birds %>% mutate(Latitude=as.numeric(as.character(LATITUDE)), Longitude=as.numeric(as.character(LONGITUDE))) 
species_loc <- birds_numeric %>% filter(Latitude >= 0 | Latitude <= 0) %>% filter(Longitude >= 0 | Longitude <= 0) %>% group_by(Genus=GENUS, Species=SPECIES) %>% summarise(Latitude=median(Latitude), Longitude=median(Longitude), Number=n()) %>% tbl_df
print(species_loc)

