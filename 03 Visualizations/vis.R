ggplot(species_loc, aes(x=Latitude, y=Longitude, color=Species)) + geom_point(aes(size=Number)) + scale_size_continuous(range=c(2,8)) + facet_wrap(~Genus) + guides(col=guide_legend(ncol=2))

