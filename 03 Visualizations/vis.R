print(ggplot(species_loc, aes(x=Latitude, y=Longitude, color=Species)) + geom_point(aes(size=Number)) + scale_size_continuous(range=c(2,8)) + facet_wrap(~Genus) + guides(col=guide_legend(ncol=2)))
print(ggplot(latlongGlareola, aes(x=LONGITUDE,y=LATITUDE,color=SPECIES))+geom_point())
print(ggplot(uniqueByCountry, aes(x=COUNTRY))+geom_bar()+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))+ylab('Species of birds'))
