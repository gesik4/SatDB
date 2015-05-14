puts 'Drop compressions...'
Compression.delete_all
puts 'Drop countries...'
Country.delete_all
puts 'Drop developers...'
Developer.delete_all
puts 'Drop opticalschemes...'
Opticalscheme.delete_all
puts 'Drop orbits...'
Orbit.delete_all
puts 'Drop owners...'
Owner.delete_all
puts 'Drop polygons...'
Polygon.delete_all
puts 'Drop satellites...'
Satellite.delete_all
puts 'Drop stardetectors...'
Stardetector.delete_all
mentor = Mentor.find_by_name('qwerchenok')
# create orbits
puts 'Creating orbits...'
orbits = Orbit.create!([
                             { name: 'Sunsynchronous orbit', description: 'Low Earth Orbit, quasi-polar, keeping constant Equatorial Crossing Time', mentor: mentor },
                             { name: 'Geostationary orbit', description: '24-h period, equatorial, eastbound, stationary over a specified longitude', mentor: mentor },
                             { name: 'Drifting orbit', description: 'Low Earth Orbit inclined over the equator, with changing Equatorial Crossing Time', mentor: mentor },
                             { name: 'Molniya orbit', description: 'Highly elliptical orbit, period 12 h, inclination 63.4°, argument of perigee -90°, quasi-geostationary around the apogee for about 8 hours. Two apogees each day', mentor: mentor },
                             { name: 'Cross-magnetosphere orbit', description: 'Highly elliptical orbit cross the Magnetosphere volume', mentor: mentor },
                             { name: 'Geosynchronous orbit', description: '24-h period, inclined over the equator, eastbound, changing latitude over a constant longitude during the day', mentor: mentor },
                             { name: 'Lagrange libration point', description: 'Stationary on a Lagrange libration point (e.g. L1, one hundredth of the distance Earth-Sun, closer to Earth)', mentor: mentor },
                             { name: 'Ecliptic orbit', description: 'Co-rotating with the Earth around the Sun', mentor: mentor },
                             { name: 'Solar orbit', description: 'Orbit around the Sun', mentor: mentor },
                             { name: 'Lunar orbit', description: 'Orbit around the Moon', mentor: mentor },
                         ])
# create compressions
puts 'Creating compressions...'
compressions = Compression.create!([
                                       { name: 'JPEG', mentor: mentor },
                                       { name: 'ADPCM', mentor: mentor },
                                       { name: 'JPEG2000', mentor: mentor}
                                   ])
puts 'Creating countries...'
countries = Country.create!([
                                { name: 'Algeria', mentor: mentor },
                                { name: 'Argentina ', mentor: mentor },
                                { name: 'Belarus', mentor: mentor },
                                { name: 'Belgium', mentor: mentor },
                                { name: 'Brazil', mentor: mentor },
                                { name: 'Canada', mentor: mentor },
                                { name: 'Chile', mentor: mentor },
                                { name: 'China', mentor: mentor },
                                { name: 'Denmark', mentor: mentor },
                                { name: 'Egypt', mentor: mentor },
                                { name: 'France', mentor: mentor },
                                { name: 'Germany', mentor: mentor },
                                { name: 'India', mentor: mentor },
                                { name: 'Israel', mentor: mentor },
                                { name: 'Italy', mentor: mentor },
                                { name: 'Japan', mentor: mentor },
                                { name: 'Kazakhstan', mentor: mentor },
                                { name: 'Netherlands', mentor: mentor },
                                { name: 'Nigeria', mentor: mentor },
                                { name: 'Republic of Korea', mentor: mentor },
                                { name: 'Russian Federation', mentor: mentor },
                                { name: 'Singapore', mentor: mentor },
                                { name: 'South Africa', mentor: mentor },
                                { name: 'Spain', mentor: mentor },
                                { name: 'Sweden', mentor: mentor },
                                { name: 'Switzerland', mentor: mentor },
                                { name: 'Thailand', mentor: mentor },
                                { name: 'Turkey', mentor: mentor },
                                { name: 'Ukraine', mentor: mentor },
                                { name: 'United Arab Emirates', mentor: mentor },
                                { name: 'United Kingdom of Great Britain and Northern Ireland', mentor: mentor },
                                { name: 'United States of America', mentor: mentor },
                                { name: 'Bolivarian Republic of Venezuela', mentor: mentor },
                                { name: 'Vietnam', mentor: mentor }
                            ])
# create agencies
puts 'Creating agencies'
agencies = [
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
    {
        name: '',
        country:
    },
]
# create satellites
puts 'Creating satellites...'
satellites = [
    {
        acronym: 'EgyptSat-2',
        full_name: 'EgyptSat-2',
        orbit: orbits[2],
        compression: compressions[0],
        norad_id: '39678',
        nssdc_id: '2014-021A'
    },
    {
        acronym: 'WorldView-3',
        full_name: 'WorldView-3',
        orbit: orbits[0],
        compression: compressions[1],
        norad_id: '40115',
        nssdc_id: '2014-048A'
    },
    {
        acronym: 'KOMPSAT-3A',
        full_name: 'Korea Multi-Purpose Satellite - 3A',
        orbit: orbits[0],
        compression: compressions[2],
        norad_id: '40536',
        nssdc_id: '2015-014A'
    }
]
satellites.map { |s| Satellite.create!(s) }