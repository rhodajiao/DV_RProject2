print("Gets all of the birds in the genus Larus in the Southeastern hemisphere.")
south_larus <- birds %>% select(SPECIES, GENUS, LATITUDE, LONGITUDE) %>% filter(LATITUDE<0 & LONGITUDE>0 & GENUS == 'Larus') %>% tbl_df
print(south_larus)

print("Gets all of the species of birds in the genus Sterna in both the United States and Mongolia.")
usMonSterna <- birds %>% select(SPECIES, GENUS,COUNTRY) %>% filter(GENUS == 'Sterna' & COUNTRY %in% c('United States of America', 'Mongolia')) %>% tbl_df
print(usMonSterna)

print("Gets the median latitude and longitude of all bird species.")
species_loc <- birds %>% filter(LATITUDE >= 0 | LATITUDE <= 0) %>% filter(LONGITUDE >= 0 | LONGITUDE <= 0) %>% group_by(Genus=GENUS, Species=SPECIES) %>% summarise(LATITUDE=median(LATITUDE), LONGITUDE=median(LONGITUDE), Number=n()) %>% tbl_df
print(species_loc)

print("Gets latitude and longitude of all birds of the species glareola.")
latlongGlareola <- birds %>% select(LATITUDE,LONGITUDE,SPECIES) %>% filter(SPECIES == 'glareola') %>% tbl_df
print(latlongGlareola)

print("Lists the unique species of bird in each country.")
uniqueByCountry <- birds %>% select(COUNTRY,SPECIES) %>% distinct() %>% arrange(COUNTRY) %>% tbl_df
print(uniqueByCountry)
