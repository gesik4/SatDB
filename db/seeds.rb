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
# create polygons
puts 'Creating polygons'
polygons = Polygon.create!([
                               { name: 'Edwards AFB', mentor: mentor },
                               { name: 'Mojave Air and Space Port', mentor: mentor },
                               { name: 'Baikonur Cosmodrome', mentor: mentor },
                               { name: 'Cape Canaveral Air Force Station', mentor: mentor },
                               { name: 'Kennedy Space Center', mentor: mentor },
                               { name: 'Jiuquan Satellite Launch Center', mentor: mentor },
                               { name: 'Vandenberg Air Force Base', mentor: mentor },
                               { name: 'Wallops Flight Facility', mentor: mentor },
                               { name: 'Kapustin Yar Cosmodrome', mentor: mentor },
                               { name: 'Hammaguir French Special Weapons Test Centre', mentor: mentor },
                               { name: 'Plesetsk Cosmodrome', mentor: mentor },
                               { name: 'San Marco platform, Broglio Space Centre', mentor: mentor },
                               { name: 'Woomera Prohibited Area', mentor: mentor },
                               { name: 'Uchinoura Space Center (Kagoshima)', mentor: mentor },
                               { name: 'Guiana Space Centre', mentor: mentor },
                               { name: 'Tanegashima Space Center', mentor: mentor },
                               { name: 'Satish Dhawan Space Centre', mentor: mentor },
                               { name: 'Xichang Satellite Launch Center', mentor: mentor },
                               { name: 'Taiyuan Satellite Launch Center', mentor: mentor },
                               { name: 'Palmachim Air Force Base', mentor: mentor },
                               { name: 'Svobodny Cosmodrome', mentor: mentor },
                               { name: 'Delta class submarine', mentor: mentor },
                               { name: 'Odyssey mobile platform', mentor: mentor },
                               { name: 'Kodiak Launch Complex', mentor: mentor },
                               { name: 'Yasny Cosmodrome (Dombarovsky)', mentor: mentor },
                               { name: 'Mid-Atlantic Regional Spaceport', mentor: mentor },
                               { name: 'Omelek, Kwajalein Atoll', mentor: mentor },
                               { name: 'Semnan', mentor: mentor },
                               { name: 'Sohae', mentor: mentor },
                               { name: 'Naro Space Center', mentor: mentor }
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
        orbit: nil,
        apogee: 720.7,
        perigee: 719.7,
        period: 99.0,
        inclination: 51.6,
        mass_dry: nil,
        mass_at_launch: 1050,
        power: nil,
        compression: nil,
        norad_id: '39678',
        nssdc_id: '2014-021A',
        launch_date: '2014-3-16 16:20:00 UTC',
    },
    {
        acronym: 'WorldView-3',
        full_name: 'WorldView-3',
        orbit: nil,
        apogee: 622.0,
        perigee: 618.4,
        period: 97.0,
        inclination: 98.0,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '40115',
        nssdc_id: '2014-048A',
        launch_date: '2014-8-13 18:30:30 UTC'
    },
   {
        acronym: 'KOMPSAT-3A',
        full_name: 'Korea Multi-Purpose Satellite - 3A',
        orbit: nil,
        apogee: 548.8,
        perigee: 527.9,
        period: 95.3,
        inclination: 97.5,
        mass_dry: 1000,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '40536',
        nssdc_id: '2015-014A',
        launch_date: '2015-3-25 22:08:53 UTC'
    },
    {
        acronym: 'Kanopus-V1',
        full_name: 'Kanopus-V1',
        orbit: nil,
        apogee: 514.8,
        perigee: 512.4,
        period: 94.7,
        inclination: 97.5,
        mass_dry: nil,
        mass_at_launch: 450,
        power: nil,
        compression: nil,
        norad_id: '38707',
        nssdc_id: '2012-039A',
        launch_date: '2012-7-22 06:41:39 UTC'
    },
    {
        acronym: 'Resurs-DK1',
        full_name: 'Resurs-DK1',
        orbit: nil,
        apogee: 570.8,
        perigee: 568.1,
        period: 95.9,
        inclination: 69.9,
        mass_dry: nil,
        mass_at_launch: 6570,
        power: nil,
        compression: nil,
        norad_id: '29228',
        nssdc_id: '2006-021A',
        launch_date: '2006-6-15 08:00:00 UTC'
    },
    {
        acronym: 'Resurs-P1',
        full_name: 'Resurs-P1',
        orbit: nil,
        apogee: 472.0,
        perigee: 468.2,
        period: 93.9,
        inclination: 97.2,
        mass_dry: nil,
        mass_at_launch: 6570,
        power: nil,
        compression: nil,
        norad_id: '39186',
        nssdc_id: '2013-030A',
        launch_date: '2013-6-25 17:28:48 UTC'
    },
    {
        acronym: 'BKA-2',
        full_name: 'BKA-2',
        orbit: nil,
        apogee: 515.6,
        perigee: 512.9,
        period: 94.8,
        inclination: 97.4,
        mass_dry: nil,
        mass_at_launch: 450,
        power: nil,
        compression: nil,
        norad_id: '38708',
        nssdc_id: '2012-039B',
        launch_date: '2012-7-22 06:41:39 UTC'
    },
    {
        acronym: 'Sich-2',
        full_name: 'Sich-2',
        orbit: nil,
        apogee: 704.7,
        perigee: 687.2,
        period: 98.5,
        inclination: 98.1,
        mass_dry: nil,
        mass_at_launch: 176,
        power: nil,
        compression: nil,
        norad_id: '37794',
        nssdc_id: '2011-044G',
        launch_date: '2011-08-17 07:12:30 UTC'
    },
    {
        acronym: 'RapidEye-1',
        full_name: 'RapidEye 1 - Tachys',
        orbit: nil,
        apogee: 652.8,
        perigee: 620.7,
        period: 97.3,
        inclination: 97.9,
        mass_dry: 144,
        mass_at_launch: 156,
        power: nil,
        compression: nil,
        norad_id: '33314',
        nssdc_id: '2008-040C',
        launch_date: '2008-08-29 07:15:53 UTC'
    },
    {
        acronym: 'RapidEye-2',
        full_name: 'RapidEye 2 - Mati',
        orbit: nil,
        apogee: 644.4,
        perigee: 629.1,
        period: 97.3,
        inclination: 97.9,
        mass_dry: 144,
        mass_at_launch: 156,
        power: nil,
        compression: nil,
        norad_id: '33312',
        nssdc_id: '2008-040A',
        launch_date: '2008-08-29 07:15:53 UTC'
    },
    {
        acronym: 'RapidEye-3',
        full_name: 'RapidEye 3 - Choma',
        orbit: nil,
        apogee: 644.5,
        perigee: 629.0,
        period: 97.3,
        inclination: 97.9,
        mass_dry: 144,
        mass_at_launch: 156,
        power: nil,
        compression: nil,
        norad_id: '33315',
        nssdc_id: '2008-040D',
        launch_date: '2008-08-29 07:15:53 UTC'
    },
    {
        acronym: 'RapidEye-4',
        full_name: 'RapidEye 4 - Choros',
        orbit: nil,
        apogee: 645.1,
        perigee: 628.5,
        period: 97.3,
        inclination: 97.9,
        mass_dry: 144,
        mass_at_launch: 156,
        power: nil,
        compression: nil,
        norad_id: '33316',
        nssdc_id: '2008-040E',
        launch_date: '2008-08-29 07:15:53 UTC'
    },
    {
        acronym: 'RapidEye-5',
        full_name: 'RapidEye 5 - Trochia',
        orbit: nil,
        apogee: 649.1,
        perigee: 624.4,
        period: 97.3,
        inclination: 97.9,
        mass_dry: 144,
        mass_at_launch: 156,
        power: nil,
        compression: nil,
        norad_id: '33313',
        nssdc_id: '2008-040B',
        launch_date: '2008-08-29 07:15:53 UTC'
    },
    {
        acronym: 'CartoSat-1',
        full_name: 'CartoSat-1',
        orbit: nil,
        apogee: 626.7,
        perigee: 624.3,
        period: 97.1,
        inclination: 97.8,
        mass_dry: 616,
        mass_at_launch: 680,
        power: nil,
        compression: nil,
        norad_id: '28649',
        nssdc_id: '2005-017A',
        launch_date: '2005-05-05 04:45:00 UTC'
    },
    {
        acronym: 'CartoSat-2',
        full_name: 'CartoSat-2',
        orbit: nil,
        apogee: 642.5,
        perigee: 638.6,
        period: 97.4,
        inclination: 97.9,
        mass_dry: 616,
        mass_at_launch: 680,
        power: nil,
        compression: nil,
        norad_id: '29710',
        nssdc_id: '2007-001B',
        launch_date: '2007-01-10 03:53:00 UTC'
    },
    {
        acronym: 'CartoSat-2B',
        full_name: 'CartoSat-2B',
        orbit: nil,
        apogee: 651.1,
        perigee: 630.1,
        period: 97.4,
        inclination: 97.9,
        mass_dry: 630,
        mass_at_launch: 694,
        power: nil,
        compression: nil,
        norad_id: '36795',
        nssdc_id: '2010-035A',
        launch_date: '2010-07-12 03:53:00 UTC'
    },
    {
        acronym: 'ResourceSat-1',
        full_name: 'ResourceSat-1',
        orbit: nil,
        apogee: 829.9,
        perigee: 824.0,
        period: 101.3,
        inclination: 98.7,
        mass_dry: nil,
        mass_at_launch: 1200,
        power: nil,
        compression: nil,
        norad_id: '28051',
        nssdc_id: '2003-046A',
        launch_date: '2003-10-17 04:54:00 UTC'
    },
    {
        acronym: 'ResourceSat-2',
        full_name: 'ResourceSat-2',
        orbit: nil,
        apogee: 829.2,
        perigee: 824.9,
        period: 101.3,
        inclination: 98.7,
        mass_dry: nil,
        mass_at_launch: 1206,
        power: nil,
        compression: nil,
        norad_id: '37387',
        nssdc_id: '2011-015A',
        launch_date: '2011-04-20 04:42:00 UTC'
    },
    {
        acronym: 'TH-1A',
        full_name: 'Tianhui 1A',
        orbit: nil,
        apogee: 512.2,
        perigee: 493.3,
        period: 94.5,
        inclination: 97.5,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '36985',
        nssdc_id: '2010-040A',
        launch_date: '2010-08-24 07:10:00 UTC'
    },
    {
        acronym: 'TH-1B',
        full_name: 'Tianhui 1B',
        orbit: nil,
        apogee: 514.3,
        perigee: 491.4,
        period: 94.5,
        inclination: 97.5,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '38256',
        nssdc_id: '2012-020A',
        launch_date: '2012-05-06 07:10:04 UTC'
    },
    {
        acronym: 'KompSat-2',
        full_name: 'Korea Multi-Purpose Satellite - 2',
        orbit: nil,
        apogee: 706.3,
        perigee: 682.2,
        period: 98.5,
        inclination: 98.2,
        mass_dry: 727,
        mass_at_launch: 800,
        power: nil,
        compression: nil,
        norad_id: '29268',
        nssdc_id: '2006-031A',
        launch_date: '2006-07-28 07:05:43 UTC'
    },
    {
        acronym: 'KompSat-3',
        full_name: 'Korea Multi-Purpose Satellite - 3',
        orbit: nil,
        apogee: 702.7,
        perigee: 689.4,
        period: 98.5,
        inclination: 98.1,
        mass_dry: 1000,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '38338',
        nssdc_id: '2012-025B',
        launch_date: '2012-05-17 16:39:00 UTC'
    },
    {
        acronym: 'Deimos-2',
        full_name: 'Deimos-2',
        orbit: nil,
        apogee: 624.3,
        perigee: 623.1,
        period: 97.0,
        inclination: 97.9,
        mass_dry: 297,
        mass_at_launch: 300,
        power: nil,
        compression: nil,
        norad_id: '40013',
        nssdc_id: '2014-033D',
        launch_date: '2014-06-19 19:11 UTC'
    },
    {
        acronym: 'QuickBird-1',
        full_name: 'QuickBird-1',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '26617',
        nssdc_id: '2000-074A',
        launch_date: '2000-11-20 23:00:00 UTC'
    },
    {
        acronym: 'QuickBird-2',
        full_name: 'QuickBird-2',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: 951,
        mass_at_launch: 1100,
        power: nil,
        compression: nil,
        norad_id: '26953',
        nssdc_id: '2001-047A',
        launch_date: '2001-10-18 18:51:00 UTC'
    },
    {
        acronym: 'WorldView-1',
        full_name: 'WorldView-1',
        orbit: nil,
        apogee: 502.4,
        perigee: 495.7,
        period: 94.4,
        inclination: 97.9,
        mass_dry: nil,
        mass_at_launch: 2500,
        power: nil,
        compression: nil,
        norad_id: '32060',
        nssdc_id: '2007-041A',
        launch_date: '2007-09-18 18:35:00 UTC'
    },
    {
        acronym: 'WorldView-2',
        full_name: 'WorldView-2',
        orbit: nil,
        apogee: 773.9,
        perigee: 772.0,
        period: 100.2,
        inclination: 98.4,
        mass_dry: nil,
        mass_at_launch: 2800,
        power: nil,
        compression: nil,
        norad_id: '35946',
        nssdc_id: '2009-055A',
        launch_date: '2009-10-08 18:51:01 UTC'
    },
    {
        acronym: 'GeoEye-1',
        full_name: 'GeoEye-1',
        orbit: nil,
        apogee: 693.2,
        perigee: 678.1,
        period: 98.3,
        inclination: 98.1,
        mass_dry: 1810,
        mass_at_launch: 1955,
        power: nil,
        compression: nil,
        norad_id: '33331',
        nssdc_id: '2008-042A',
        launch_date: '2008-09-06 18:50:57 UTC'
    },
    {
        acronym: 'Ikonos-1',
        full_name: 'Ikonos-1',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: nil,
        nssdc_id: 'F990427A',
        launch_date: '1999-04-27 18:22:00 UTC'
    },
    {
        acronym: 'Ikonos-2',
        full_name: 'Ikonos-2',
        orbit: nil,
        apogee: 623.3,
        perigee: 610.3,
        period: 96.9,
        inclination: 98.1,
        mass_dry: 726,
        mass_at_launch: 817,
        power: nil,
        compression: nil,
        norad_id: '25919',
        nssdc_id: '1999-051A',
        launch_date: '1999-09-24 18:21:00 UTC'
    },
    {
        acronym: 'WorldView-4',
        full_name: 'WorldView-4',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: nil,
        nssdc_id: nil,
        launch_date: nil
    },
    {
        acronym: 'Aqua',
        full_name: 'Earth Observation System - Aqua',
        orbit: nil,
        apogee: 710.4,
        perigee: 708.7,
        period: 98.8,
        inclination: 98.2,
        mass_dry: 2832,
        mass_at_launch: 2934,
        power: nil,
        compression: nil,
        norad_id: '27424',
        nssdc_id: '2002-022A',
        launch_date: '2002-05-04 09:54:58 UTC'
    },
    {
        acronym: 'EO-1',
        full_name: 'New Millennium Program Earth Observing - 1',
        orbit: nil,
        apogee: 694.3,
        perigee: 680.5,
        period: 98.4,
        inclination: 97.9,
        mass_dry: 565,
        mass_at_launch: 588,
        power: nil,
        compression: nil,
        norad_id: '26619',
        nssdc_id: '2000-075A',
        launch_date: '2000-11-21 18:24:25 UTC'
    },
    {
        acronym: 'Landsat-7',
        full_name: 'Landsat-7',
        orbit: nil,
        apogee: 710.4,
        perigee: 709.0,
        period: 98.8,
        inclination: 98.2,
        mass_dry: 1980,
        mass_at_launch: 2100,
        power: nil,
        compression: nil,
        norad_id: '25682',
        nssdc_id: '1999-020A',
        launch_date: '1999-04-15 18:32:00 UTC'
    },
    {
        acronym: 'Soumi NPP',
        full_name: 'Suomi NPOESS Preparatory Project',
        orbit: nil,
        apogee: 835.0,
        perigee: 833.0,
        period: 101.4,
        inclination: 98.7,
        mass_dry: 1400,
        mass_at_launch: 2128,
        power: nil,
        compression: nil,
        norad_id: '37849',
        nssdc_id: '2011-061A',
        launch_date: '2011-10-28 09:48:00 UTC'
    },
    {
        acronym: 'Terra',
        full_name: 'Earth Observation System - Terra',
        orbit: nil,
        apogee: 710.6,
        perigee: 708.8,
        period: 98.8,
        inclination: 98.2,
        mass_dry: 4864,
        mass_at_launch: 5190,
        power: nil,
        compression: nil,
        norad_id: '25994',
        nssdc_id: '1999-068A',
        launch_date: '1999-12-18 18:57:39 UTC'
    },
    {
        acronym: 'Landsat-8',
        full_name: 'Landsat-8',
        orbit: nil,
        apogee: 710.8,
        perigee: 708.7,
        period: 98.8,
        inclination: 98.2,
        mass_dry: 1512,
        mass_at_launch: 2623,
        power: nil,
        compression: nil,
        norad_id: '39084',
        nssdc_id: '2013-008A',
        launch_date: '2013-02-11 18:02:00 UTC'
    },
    {
        acronym: 'SkySat-1',
        full_name: 'SkySat-1',
        orbit: nil,
        apogee: 596.8,
        perigee: 567.5,
        period: 96.2,
        inclination: 97.8,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '39418',
        nssdc_id: '2013-066C',
        launch_date: '2013-11-21 07:25:48 UTC '
    },
    {
        acronym: 'SkySat-2',
        full_name: 'SkySat-2',
        orbit: nil,
        apogee: 639.2,
        perigee: 630.7,
        period: 97.3,
        inclination: 98.4,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: '40072',
        nssdc_id: '2014-037D',
        launch_date: '2014-07-08 15:58:28 UTC'
    },
    {
        acronym: 'Pleiades-1A',
        full_name: 'Pleiades-1A',
        orbit: nil,
        apogee: 706.0,
        perigee: 703.9,
        period: 98.7,
        inclination: 98.2,
        mass_dry: 940,
        mass_at_launch: 1015,
        power: nil,
        compression: nil,
        norad_id: '38012',
        nssdc_id: '2011-076F',
        launch_date: '2011-12-17 02:03:00 UTC'
    },
    {
        acronym: 'Pleiades-1B',
        full_name: 'Pleiades-1B',
        orbit: nil,
        apogee: 706.1,
        perigee: 703.9,
        period: 98.7,
        inclination: 98.2,
        mass_dry: 940,
        mass_at_launch: 1015,
        power: nil,
        compression: nil,
        norad_id: '39019',
        nssdc_id: '2012-068A',
        launch_date: '2012-12-02 02:02:00 UTC'
    },
    {
        acronym: 'Alos',
        full_name: 'Advanced Land Observing Satellite',
        orbit: nil,
        apogee: 695.5,
        perigee: 693.2,
        period: 98.5,
        inclination: 97.9,
        mass_dry: 3820,
        mass_at_launch: 4000,
        power: nil,
        compression: nil,
        norad_id: '28931',
        nssdc_id: '2006-002A',
        launch_date: '2006-01-24 01:33:00 UTC'
    },
    {
        acronym: 'Alos-3',
        full_name: 'Advanced Land Observing Satellite - 3',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: nil,
        nssdc_id: nil,
        launch_date: nil
    },
    {
        acronym: 'Asnaro',
        full_name: 'Advanced Satellite with new system ARchitecure for Observation - 1',
        orbit: nil,
        apogee: 514.7,
        perigee: 512.8,
        period: 94.8,
        inclination: 97.5,
        mass_dry: 450,
        mass_at_launch: 495,
        power: nil,
        compression: nil,
        norad_id: '40298',
        nssdc_id: '2014-070A',
        launch_date: '2014-11-06 07:35:49 UTC'
    },
    {
        acronym: 'Alsat-1',
        full_name: 'Algeria Satellite - 1',
        orbit: nil,
        apogee: 677.7,
        perigee: 648.2,
        period: 97.8,
        inclination: 97.8,
        mass_dry: 88,
        mass_at_launch: 90,
        power: nil,
        compression: nil,
        norad_id: '27559',
        nssdc_id: '2002-054A',
        launch_date: '2002-11-28 06:07:00 UTC'
    },
    {
        acronym: 'Beijing-1',
        full_name: 'Beijing-1',
        orbit: nil,
        apogee: 708.6,
        perigee: 685.7,
        period: 98.6,
        inclination: 97.8,
        mass_dry: 155,
        mass_at_launch: 166,
        power: nil,
        compression: nil,
        norad_id: '28890',
        nssdc_id: '2005-043A',
        launch_date: '2005-10-27 6:52:00 UTC'
    },
    {
        acronym: 'BILSat-1',
        full_name: 'BILTEN Satellte',
        orbit: nil,
        apogee: 696.1,
        perigee: 678.2,
        period: 98.4,
        inclination: 97.9,
        mass_dry: 110,
        mass_at_launch: 129,
        power: nil,
        compression: nil,
        norad_id: '27943',
        nssdc_id: '2003-042E',
        launch_date: '2003-09-27 06:12:00 UTC'
    },
    {
        acronym: 'Deimos-1',
        full_name: 'Deimos-1',
        orbit: nil,
        apogee: 664.4,
        perigee: 663.3,
        period: 97.9,
        inclination: 98.0,
        mass_dry: 89,
        mass_at_launch: 91,
        power: nil,
        compression: nil,
        norad_id: '35681',
        nssdc_id: '2009-041A',
        launch_date: '2009-07-29 18:46:00 UTC'
    },
    {
        acronym: 'NigeriaSat-1',
        full_name: 'NigeriaSat-1',
        orbit: nil,
        apogee: 668.7,
        perigee: 598.7,
        period: 97.2,
        inclination: 97.8,
        mass_dry: 96,
        mass_at_launch: 98,
        power: nil,
        compression: nil,
        norad_id: '27941',
        nssdc_id: '2003-042C',
        launch_date: '2003-09-27 06:12:00 UTC'
    },
    {
        acronym: 'NigeriaSat-2',
        full_name: 'NigeriaSat-2',
        orbit: nil,
        apogee: 701.1,
        perigee: 687.5,
        period: 98.5,
        inclination: 98.1,
        mass_dry: 286,
        mass_at_launch: 286,
        power: nil,
        compression: nil,
        norad_id: '37789',
        nssdc_id: '2011-044B',
        launch_date: '2011-08-17 07:12:20 UTC'
    },
    {
        acronym: 'NigeriaSat-X',
        full_name: 'NigeriaSat-X',
        orbit: nil,
        apogee: 715.4,
        perigee: 696.3,
        period: 98.7,
        inclination: 98.2,
        mass_dry: 85,
        mass_at_launch: 87,
        power: nil,
        compression: nil,
        norad_id: '37790',
        nssdc_id: '2011-044C',
        launch_date: '2011-08-17 07:12:20 UTC'
    },
    {
        acronym: 'UK-DMC',
        full_name: 'UK contribution to the Disaster Monitoring Constellation - 1',
        orbit: nil,
        apogee: 686.2,
        perigee: 596.6,
        period: 97.4,
        inclination: 97.7,
        mass_dry: 86,
        mass_at_launch: 88,
        power: nil,
        compression: nil,
        norad_id: '27942',
        nssdc_id: '2003-042D',
        launch_date: '2003-09-27 06:11:44 UTC'
    },
    {
        acronym: 'UK-DMC-2',
        full_name: 'UK contribution to the Disaster Monitoring Constellation - 2',
        orbit: nil,
        apogee: 667.0,
        perigee: 664.9,
        period: 97.9,
        inclination: 97.9,
        mass_dry: 117,
        mass_at_launch: 120,
        power: nil,
        compression: nil,
        norad_id: '35683',
        nssdc_id: '2009-041C',
        launch_date: '2009-07-29 18:46:29 UTC'
    },
    {
        acronym: 'Sentinel-2',
        full_name: 'Sentinel-2',
        orbit: nil,
        apogee: nil,
        perigee: nil,
        inclination: nil,
        mass_dry: nil,
        mass_at_launch: nil,
        power: nil,
        compression: nil,
        norad_id: nil,
        nssdc_id: nil,
        launch_date: nil
    }
]
satellites.map { |s| Satellite.create!(s) }