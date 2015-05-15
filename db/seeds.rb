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

Mentor.create(name: 'admin', password: 'U52oxXaBlaAnk7t')

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
        acronym: 'ABAE',
        full_name: 'Agencia Bolivariana para Actividades Espaciales',
        country: countries[32]
    },
    {
        acronym: 'ACE',
        full_name: 'Agencia Chilena del Espacio',
        country: countries[6]
    },
    {
        acronym: 'AFRL',
        full_name: 'Air Force Research Laboratory ',
        country: countries[31]
    },
    {
        acronym: 'ASAL',
        full_name: 'Agence Spatial Algerienne',
        country: countries[0]
    },
    {
        acronym: 'ASI',
        full_name: 'Agenzia Spaziale Italiana',
        country: countries[14]
    },
    {
        acronym: 'BIRA',
        full_name: 'Belgisch Instituut voor Ruimte-Aëronomie',
        country: countries[3]
    },
    {
        acronym: 'BNSC',
        full_name: 'British National Space Council',
        country: countries[30]
    },
    {
        acronym: 'CAST',
        full_name: 'Chinese Academy of Science and Technology ',
        country: countries[7]
    },
    {
        acronym: 'CDTI',
        full_name: 'Centro para el Desarrollo Tecnológico Industrial',
        country: countries[23]
    },
    {
        acronym: 'CMA',
        full_name: 'China Meteorological Administration',
        country: countries[7]
    },
    {
        acronym: 'CNES',
        full_name: 'Centre National d''Etudes Spatiales',
        country: countries[10]
    },
    {
        acronym: 'CNSA',
        full_name: 'China National Space Administration',
        country: countries[7]
    },
    {
        acronym: 'CONAE',
        full_name: 'Comisión Nacional de Actividades Espaciales ',
        country: countries[1]
    },
    {
        acronym: 'CRESDA',
        full_name: 'China Center for Resources Satellite Data and Application',
        country: countries[7]
    },
    {
        acronym: 'CSA',
        full_name: 'Canadian Space Agency',
        country: countries[5]
    },
    {
        acronym: 'DigitalGlobe',
        full_name: 'DigitalGlobe',
        country: countries[31]
    },
    {
        acronym: 'DLR',
        full_name: 'Deutsches Zentrum für Luft- und Raumfahrt',
        country: countries[11]
    },
    {
        acronym: 'DNSC',
        full_name: 'Danish National Space Center',
        country: countries[8]
    },
    {
        acronym: 'DoD',
        full_name: 'Department of Defense',
        country: countries[31]
    },
    {
        acronym: 'EC',
        full_name: 'European Commission',
        country: nil
    },
    {
        acronym: 'EIAST',
        full_name: 'Emirates Institution for Advanced Science and Technology',
        country: countries[29]
    },
    {
        acronym: 'Elecnor Deimos',
        full_name: 'Elecnor Deimos',
        country: countries[23]
    },
    {
        acronym: 'ESA',
        full_name: 'European Space Agency',
        country: nil
    },
    {
        acronym: 'EUMETSAT',
        full_name: 'European Organisation for the Exploitation of Meteorological Satellites',
        country: nil
    },
    {
        acronym: 'GeoEye',
        full_name: 'GeoEye',
        country: countries[31]
    },
    {
        acronym: 'ISTDA',
        full_name: 'Geo-Informatics and Space Technology Development Agency',
        country: countries[26]
    },
    {
        acronym: 'IMD',
        full_name: 'India Meteorological Department',
        country: countries[12]
    },
    {
        acronym: 'INPE',
        full_name: 'Instituto Nacional de Pesquisas Espaciais',
        country: countries[4]
    },
    {
        acronym: 'ISA',
        full_name: 'Israel Space Agency',
        country: countries[13]
    },
    {
        acronym: 'ISRO',
        full_name: 'Indian Space Research Organisation',
        country: countries[12]
    },
    {
        acronym: 'JAXA',
        full_name: 'Japan Aerospace Exploration Agency',
        country: countries[15]
    },
    {
        acronym: 'JCAB',
        full_name: 'Japanese Civil Aviation Bureau',
        country: countries[15]
    },
    {
        acronym: 'JMA',
        full_name: 'Japan Meteorological Agency',
        country: countries[15]
    },
    {
        acronym: 'KARI',
        full_name: 'Korea Aerospace Research Institute',
        country: countries[19]
    },
    {
        acronym: 'Kazcosmos',
        full_name: 'Kazakhstan National Space Agency ',
        country: countries[16]
    },
    {
        acronym: 'KIOST',
        full_name: 'Korea Institute of Ocean Science & Technology',
        country: countries[19]
    },
    {
        acronym: 'KMA',
        full_name: 'Korea Meteorological Administration ',
        country: countries[19]
    },
    {
        acronym: 'KORDI',
        full_name: 'Korean Ocean Research and Development Institute now renamed Korea Institute for Ocean Science and Technology (KIOST)',
        country: countries[19]
    },
    {
        acronym: 'MDE',
        full_name: 'Ministerio de Defensa',
        country: countries[23]
    },
    {
        acronym: 'ME',
        full_name: 'Ministry of Ennvironment',
        country: countries[19]
    },
    {
        acronym: 'METI',
        full_name: 'Ministry of Economy, Trade and Industry',
        country: countries[15]
    },
    {
        acronym: 'MLTM',
        full_name: 'Ministry of Land, Transport and Maritime Affairs',
        country: countries[19]
    },
    {
        acronym: 'MOE',
        full_name: 'Ministry of the Environment',
        country: countries[15]
    },
    {
        acronym: 'NARSS',
        full_name: 'National Authority for Remote Sensing and Space Science',
        country: countries[9]
    },
    {
        acronym: 'NASA',
        full_name: 'National Aeronautics and Space Administration',
        country: countries[31]
    },
    {
        acronym: 'NASDA',
        full_name: 'National Space Development Agency',
        country: countries[15]
    },
    {
        acronym: 'NASRDA',
        full_name: 'National Space Research and Development Agency',
        country: countries[18]
    },
    {
        acronym: 'NEC',
        full_name: 'Nippon Electric Company',
        country: countries[15]
    },
    {
        acronym: 'NIVR',
        full_name: 'Netherlands Agency for Aerospace Programmes',
        country: countries[17]
    },
    {
        acronym: 'NOAA',
        full_name: 'National Oceanic and Atmospheric Administration',
        country: countries[31]
    },
    {
        acronym: 'NPOMash',
        full_name: 'NPO Mashinostroyenia ',
        country: countries[20]
    },
    {
        acronym: 'NRL',
        full_name: 'Naval Reasearch Laboratory',
        country: countries[31]
    },
    {
        acronym: 'NRSCC',
        full_name: 'National Remote Sensing Center of China',
        country: countries[7]
    },
    {
        acronym: 'NSAU',
        full_name: 'National Space Agency of Ukraine',
        country: countries[28]
    },
    {
        acronym: 'NSO',
        full_name: 'Netherlands Space Office',
        country: countries[17]
    },
    {
        acronym: 'NSOAS',
        full_name: 'National Satellite Ocean Application Service',
        country: countries[7]
    },
    {
        acronym: 'NSPO',
        full_name: 'National Space Organization of Taiwan',
        country: countries[7]
    },
    {
        acronym: 'NTU',
        full_name: 'Nanyang Technological University',
        country: countries[21]
    },
    {
        acronym: 'PLA',
        full_name: 'People’s Liberation Army',
        country: countries[7]
    },
    {
        acronym: 'RapidEye',
        full_name: 'RapidEye AG',
        country: countries[11]
    },
    {
        acronym: 'Roscosmos',
        full_name: 'Russian Federal Space Agency',
        country: countries[20]
    },
    {
        acronym: 'RosHydroMet',
        full_name: 'Russian Federal Service for Hydrometorology and Environmental Monitoring',
        country: countries[20]
    },
    {
        acronym: 'SANSA',
        full_name: 'South African National Space Agency ',
        country: countries[22]
    },
    {
        acronym: 'Skybox',
        full_name: 'Skybox Imaging Inc.',
        country: countries[31]
    },
    {
        acronym: 'SNSB',
        full_name: 'Swedish National Space Board',
        country: countries[24]
    },
    {
        acronym: 'Spot Image',
        full_name: 'Spot Image',
        country: countries[10]
    },
    {
        acronym: 'SSO',
        full_name: 'Swiss Space Office',
        country: countries[25]
    },
    {
        acronym: 'STI-VAST',
        full_name: 'Space Technology Institute-Vietnam Academy of Science and Technology',
        country: countries[33]
    },
    {
        acronym: 'TÜBITAK-BILTEN',
        full_name: 'Bilgi Teknolojileri ve Elektronik. Araştırma Enstitüsü - BÜLTEN',
        country: countries[27]
    },
    {
        acronym: 'TÜBITAK-UZAY',
        full_name: 'Scientific and Technological Research Council of Turkey - Space Technologies Research Institute',
        country: countries[27]
    },
    {
        acronym: 'UCAR',
        full_name: 'University Corporation for Atmospheric Research ',
        country: countries[31]
    },
    {
        acronym: 'USAF',
        full_name: 'United States Air Force',
        country: countries[31]
    },
    {
        acronym: 'USEF',
        full_name: 'Institute for Unmanned Space Experiment Free Flyer',
        country: countries[15]
    },
    {
        acronym: 'USGS',
        full_name: 'United States Geological Survey ',
        country: countries[31]
    },
    {
        acronym: 'YSDO',
        full_name: 'Yuzhnoye State Design Office ',
        country: countries[27]
    }
]
agencies.map { |s| Agency.create!(s) }
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
    },
    {
        acronym: 'Kanopus-V1',
    },
    {
        acronym: 'Resurs-DK1',
    },
    {
        acronym: 'Resurs-P1',
    },
    {
        acronym: 'BKA',
    },
    {
        acronym: 'Sich-2',
    },
    {
        acronym: 'RapidEye-1',
    },
    {
        acronym: 'RapidEye-2',
    },
    {
        acronym: 'RapidEye-3',
    },
    {
        acronym: 'RapidEye-4',
    },
    {
        acronym: 'RapidEye-5',
    },
    {
        acronym: 'Cartosat-1',
    },
    {
        acronym: 'Cartosat-2',
    },
    {
        acronym: 'Cartosat-2B',
    },
    {
        acronym: 'Resourcesat-1',
    },
    {
        acronym: 'Resourcesat-2',
    },
    {
        acronym: 'TH-1',
    },
    {
        acronym: 'TH-2',
    },
    {
        acronym: 'Kompsat-2',
    },
    {
        acronym: 'Kompsat-3',
    },
    {
        acronym: 'Deimos-2',
    },
    {
        acronym: 'QuickBird',
    },
    {
        acronym: 'WorldView-1',
    },
    {
        acronym: 'WorldView-2',
    },
    {
        acronym: 'GeoEye-1',
    },
    {
        acronym: 'Ikonos',
    },
    {
        acronym: 'GeoEye-2',
    },
    {
        acronym: 'Aqua',
    },
    {
        acronym: 'EO-1',
        full_name: 'Earth Observing - 1',
    },
    {
        acronym: 'Landsat-7',
    },
    {
        acronym: 'Soumi NPP',
        full_name: 'Suomi NPOESS Preparatory Project',
    },
    {
        acronym: 'Terra',
    },
    {
        acronym: 'Landsat-8',
    },
    {
        acronym: 'SkySat-1',
    },
    {
        acronym: 'SkySat-2',
    },
    {
        acronym: 'Pleiades-1A',
    },
    {
        acronym: 'Pleiades-1B',
    },
    {
        acronym: 'Alos',
    },
    {
        acronym: 'Alos-3',
    },
    {
        acronym: 'Asnaro',
    },
    {
        acronym: 'Alsat-1',
    },
    {
        acronym: 'Bejing-1',
    },
    {
        acronym: 'Bilsat-1',
    },
    {
        acronym: 'Deimos-1',
    },
    {
        acronym: 'Nigeriasat-1',
    },
    {
        acronym: 'Nigeriasat-2',
    },
    {
        acronym: 'Nigeriasat-X',
    },
    {
        acronym: 'UK-DMC',
    },
    {
        acronym: 'UK-DMC-2',
    },
    {
        acronym: 'Sentinel-2',
    }
]
satellites.map { |s| Satellite.create!(s) }