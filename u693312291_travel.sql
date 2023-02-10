-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 10, 2023 at 04:57 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u693312291_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `placeId` int(11) NOT NULL,
  `cateId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`placeId`, `cateId`) VALUES
(4, 6),
(4, 8),
(16, 6),
(5, 6),
(5, 5),
(5, 8),
(6, 5),
(7, 6),
(8, 6),
(19, 6),
(9, 5),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(13, 5),
(14, 5),
(15, 6),
(15, 5),
(17, 5),
(18, 12),
(18, 4),
(20, 5),
(21, 2),
(21, 3),
(22, 8),
(23, 6),
(24, 5),
(4, 107),
(5, 115),
(6, 119),
(7, 119),
(8, 120),
(9, 119),
(10, 119),
(21, 119),
(11, 102),
(12, 119),
(13, 119),
(14, 119),
(15, 101),
(16, 119),
(17, 102),
(18, 119),
(19, 119),
(20, 119),
(21, 119),
(22, 120),
(23, 120),
(24, 100);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`userId`, `placeId`, `comment`) VALUES
(1, 4, 'Nice place to visit');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `userId` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `summary` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `favplace`
--

CREATE TABLE `favplace` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favplace`
--

INSERT INTO `favplace` (`userId`, `placeId`) VALUES
(1, 1),
(8, 1),
(1, 16),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `likeplace`
--

CREATE TABLE `likeplace` (
  `userId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likeplace`
--

INSERT INTO `likeplace` (`userId`, `placeId`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `placeimg`
--

CREATE TABLE `placeimg` (
  `placeId` int(11) NOT NULL,
  `imgName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `placeimg`
--

INSERT INTO `placeimg` (`placeId`, `imgName`) VALUES
(4, 'ruwanweli001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `placeId` int(11) NOT NULL,
  `placename` varchar(50) NOT NULL,
  `thumbnail` varchar(40) NOT NULL,
  `likes` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`placeId`, `placename`, `thumbnail`, `likes`, `views`, `uploadtime`, `description`) VALUES
(4, 'Ruwanwelisaya', 'Ruwanwelisaya.jpg', 0, 91, 65767, 'The Ruwanweli Maha Seya, also known as the Mahathupa is a stupa in Anuradhapura, Sri Lanka. Two quarts or one Dona of the Buddha\'s relics are enshrined in the stupa, making it the largest collection of his relics anywhere. It was built by Sinhalese King Dutugemunu in c. 140 B.C., who became king of Sri Lanka after a war in which the Chola King Elāra was defeated. It is also known as Swarnamali Seya, Svaṇṇamāli Mahaceti and Rathnamali Seya.'),
(5, 'Adam\'s Peak', 'adam\'speak.jpg', 0, 1, 1672542402, 'Adam\'s Peak is a 2,243 m (7,359 ft) tall conical mountain located in central Sri Lanka. It is well known for the Sri Pada (Sinhala: ශ්‍රී පාද), i.e., \"sacred footprint\", a 1.8 m (5 ft 11 in) rock formation near the summit, which in the Buddhist tradition is held to be the footprint of the Buddha, in Hindu tradition that of Hanuman or Shiva (Tamil: சிவனொளிபாதமலை, lit. \'Sivanolipaathamalai\'), i.e., \"Mountain of Shiva\'s Light\", and in some Islamic and Christian traditions that of Adam or that of St. Thomas. The mountain is located in the southern reaches of the Central Highlands in the Ratnapura District and Nuwara Eliya District of the Sabaragamuwa Province and Central Province —lying about 40 km (25 mi) northeast of Ratnapura and 32 km (20 mi) southwest of Hatton. The surrounding region is largely forested hills, with no mountain of comparable size nearby. The area along the cliff is a wildlife reserve, housing many species varying from elephants to leopards, including many endemic species.\r\n\r\nAdam\'s Peak is important as a watershed. The districts to the south and the east of Adam\'s Peak yield precious stones—emeralds, rubies, and sapphires, for which the island has been famous, and which earned it the ancient name of Ratnadvipa.\r\n\r\nAdam\'s Peak is the source of three major rivers in Sri Lanka: the Kelani River, the Walawe River, and the Kalu Ganga (river).'),
(6, 'Bambarakanda Falls', 'Bambarakanda_Waterfall.jpg', 0, 9, 1672542684, 'Bambarakanda Falls (also known as Bambarakele Falls) is the tallest waterfall in Sri Lanka. With a height of 263 m (863 ft), it ranks as the 461st-highest waterfall in the world.[2] Situated in Kalupahana in the Badulla District, this waterfall is 5 km (3.1 mi) away from the A4 Highway. Kuda Oya, a tributary of the Walawe River, formed the waterfall. The Bambarakanda Falls can be found in a forest of pine trees.'),
(7, 'Bogoda Wooden Bridge', 'Bogoda_Wooden_Bridge.jpg', 0, 3, 1672544176, 'The Bogoda Wooden Bridge was built in the 16th century during the Dambadeniya era. This is said to be the oldest surviving wooden bridge in Sri Lanka.[citation needed] The bridge is situated 7 kilometers (4.3 mi) west of Badulla. All parts of this bridge were constructed from wood, including wooden nails as fixing material. The roof tiles show the influence of the Kingdom of Kandy. The bridge was built across the Gallanda Oya, which linked Badulla and Kandy on an ancient route. The Bogoda bridge is over 400 years old and made entirely from wooden planks, which are said to have come from one tree.[citation needed] It is a complete construction as it has a 2.4 meters (7.9 ft) tall tiled roof structure for its entire span of nearly 15 meters (49 ft) length with a 1.5 meters (4.9 ft) breadth. Wooden fences of the bridge are decorated in various ancient designs and have been erected on either side.\r\n\r\nThe bridge structure is standing on a huge tree trunk 11 meters (36 ft) in height. Jack fruit (Artocarpus heterophyllus) logs and Kumbuk (Terminalia arjuna) logs were mainly used as the construction material of the bridge. Furthermore, Kaluwara (Diospyros ebenum) timber and Milla timber were used for the wooden decorations.'),
(8, 'Buduruwagala Temple', 'Buduruwagala_Temple.jpg', 0, 0, 1672544666, 'Buduruwagala is an ancient Buddhist temple in Sri Lanka. The complex consists of seven statues and belongs to the Mahayana school of thought. The statues date back to the 10th century. The gigantic Buddha statue still bears traces of its original stuccoed robe and a long streak of orange suggests it was once brightly painted. The center of the three figures to the Buddha\'s right is thought to be the Buddhist mythological figure-the Bodhisattva Avalokitesvara. To the left of this white-painted figure is a female figure in the thrice-bent posture, which is believed to be his consort-Tara.'),
(9, 'Diyaluma Falls', 'Diyaluma_Falls.jpg', 0, 0, 1672544766, 'Diyaluma Falls is 220 m (720 ft) high and the second-highest waterfall in Sri Lanka and 361st highest waterfall in the world. It is situated 6 km (3.7 mi) away from Koslanda in Badulla District on the Colombo-Badulla highway. The Falls are formed by Punagala Oya, a tributary of Kuda Oya which in turn, is a tributary of Kirindi Oya.'),
(10, 'Ella Rock', 'Ella_Rock.jpg', 0, 1, 1672544901, 'Ella Rock lies in the famous city of Ella in the Uva Province of Sri Lanka. The height of the Ella rock is 1,141 m (3,743 ft). If you are visiting the area, Ella Rock should be on your must-see list because it offers some of the best panoramic views in Sri Lanka. This mountain can be seen from anywhere in Ella.\r\n\r\nElla is a lovely small town in the hill country of Sri Lanka, with an elevation of 1,041 m (3,415 ft). It\'s an excellent starting point for exploring the surrounding hills and taking in the breathtaking views of the Badulla green valleys. The weather is typically humid, with moderate air temperatures, sunny mornings, and afternoon rain showers. Ella Rock is one of the places that demonstrates this.\r\n\r\nThe total time spent climbing up and down is four hours. Yes, that does sound like a long journey. However, the path to the top is filled with variety. You\'ll enjoy the rail walk if you start at Ella train station, and as you climb, you\'ll see a waterfall, a rubber tree forest, and tea plantations. It is a famous cliff high above Ella\'s village, approximately 8 km (5 miles) from the town center.'),
(11, 'Horton Plains National Park', 'Horton_Plains_National_Park.jpg', 0, 1, 1672545118, 'Horton Plains National Park (Sinhala: හෝර්ටන් තැන්න ජාතික උද්‍යානය, romanized: Horten Thanna Jathika Udyanaya) is a national park in the central highlands of Sri Lanka that was designated in 1988. It is located at an elevation of 2,100–2,300 m (6,900–7,500 ft) and encompasses montane grassland and cloud forest. It is rich in biodiversity and many species found here are endemic to the region. It is also a popular tourist destination and is situated 8 kilometers (5.0 mi) from Ohiya, 6 kilometers (3.7 mi) from the world-famous Ohiya Gap/Dondra Watch, and 32 kilometers (20 mi) from Nuwara Eliya.\r\n\r\nThe Horton Plains are the headwaters of three major Sri Lankan rivers, the Mahaweli, Kelani, and Walawe. In Sinhala the plains are known as Maha Eliya Plains (මහ එළිය තැන්න). Stone tools dating back to Balangoda culture have been found here. The plains\' vegetation is grasslands interspersed with montane forest and includes many endemic woody plants. Large herds of Sri Lankan sambar deer are typical mammals and the park is also an Important Bird Area with many species not only endemic to Sri Lanka but also restricted to the Horton Plains. Forest dieback is one of the significant threats to the park and some studies suggest that a natural phenomenon causes it.\r\n\r\nThe sheer precipice of World\'s End and Baker\'s Falls are among the tourist attractions of the park.'),
(12, 'Lipton’s Seat', 'Lipton’s_Seat.jpg', 0, 4, 1672545249, 'Lipton\'s Seats is a high observation point in Poonagala, Bandarawela, and Sri Lanka hills. It is also near the Dambatenne Tea Factory. The end of Lipton\'s Seat is reached by climbing for around 8 km surrounded by peaceful green tea plantations and an occasional colorful tea plucker. From Lipton\'s Seat the Uva province, Sabaragamuywa, and Central province spread out from before the feet of the viewer in a display rivaling that of the famed World\'s End observation point.'),
(13, 'Nine Arches Bridge', 'Nine_arches_bridge.jpg', 0, 0, 1672545646, 'The Nine Arches Bridge (Sinhala: ආරුක්කු නමයේ පාලම,) also called the Bridge in the Sky, is a viaduct bridge in Sri Lanka. It is one of the country\'s best examples of colonial-era railway construction.\r\n\r\nIt is located in Demodara, between Ella and Demodara railway stations. The surrounding area has seen a steady increase in tourism due to the bridge\'s architectural ingenuity and the profuse greenery in the nearby hillsides.\r\n\r\nThe bridge\'s construction is generally attributed to a local Ceylonese builder, P. K. Appuhami, in consultation with British engineers. The chief designer and project manager of the \'upcountry railway line of Ceylon\' project were D. J. Wimalasurendra, a distinguished Ceylonese engineer and inventor. The designer of the viaduct was Harold Cuthbert Marwood of the Railway Construction Department of Ceylon Government Railway. The 1923 report titled \"Construction of a Concrete Railway Viaduct in Ceylon\" published by the Engineering Association of Ceylon has details of all the records including the plans and drawings.\r\n\r\nWidespread rumors suggest that when construction work commenced on the bridge, the Great War began between the empires of Europe, and the steel assigned for this site was reallocated to Britain\'s War-related projects at the battlefront. As a result, the work came to a standstill, leading the locals to build the bridge with stone bricks and cement, but without steel.'),
(14, 'Ravana Ella Falls', 'Ravana_Ella_Falls.jpg', 0, 0, 1672545837, 'This waterfall measures approximately 25 m (82 ft) in height and cascades from an oval-shaped concave rock outcrop. During the local wet season, the waterfall turns into what is said to resemble an areca flower with withering petals. But this is not the case in the dry season, where water flow reduces dramatically. The falls form part of the Ravana Ella Wildlife Sanctuary and are located 6 km (3.7 mi) away from the local railway station at Ella.'),
(15, 'Sigiriya', 'Sigiriya.jpg', 0, 2, 1672545919, 'Sigiriya or Sinhagiri (Lion Rock Sinhala: සීගිරිය, Tamil: சிகிரியா/சிங்ககிரி, pronounced see-gi-RI-yə) is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka. It is a site of historical and archaeological significance dominated by a massive column of rock approximately 180 m (590 ft) high.\r\n\r\nAccording to the ancient Sri Lankan chronicle the Cūḷavaṃsa, this area was a large forest. After storms and landslides, it became a hill and was selected by King Kashyapa for his new capital. He built his palace on top of this rock and decorated its sides with colorful frescoes. On a small plateau about halfway up the side of this rock, he built a gateway in the form of an enormous lion. The name of this place is derived from this structure; Sīnhāgiri, the Lion Rock (an etymology similar to Singapura, the Sanskrit name of Singapore, the Lion City).\r\n\r\nThe capital and the royal palace were abandoned after the king\'s death. It was used as a Buddhist monastery until the 14th century. Sigiriya today is a UNESCO-listed World Heritage Site. It is one of the best-preserved examples of ancient urban planning.'),
(16, 'Adisham Bungalow', 'Adisham_Bungalow.jpg', 0, 15, 1672546056, 'Adisham Hall or Adisham Bungalow is a country house near Haputale, in the Badulla District, Sri Lanka. At present, it houses the Adisham monastery of Saint Benedict. It has a relic (a chip of a bone) of St. Sylvester at the chapel.[1]\r\n\r\nSir Thomas Villiers was awarded 2.8 ha (7 acres) from the Tangamale Strict Nature Reserve by an act of the British parliament. The house was built in 1931 by an English aristocrat and planter Sir Thomas Villiers, former Chairman of George Steuart Co, a trading and estate agency based in Colombo. Sir Thomas was a grandson of Lord John Russell and a descendant of the Dukes of Bedford. Named after Adisham, it was designed by R. Booth and F. Webster in Tudor and Jacobean styles. Adisham Hall played host to many prominent personalities of the colony until the retirement of Sir Thomas, after which it was purchased by Don Charles Wijewardene and his daughter Rukmini Wijewardene, owners of Sedawatte Estates, in 1950. While studying at LSE, London, Rukmini Wijewardene, to thank him for sale, made a courtesy call on Sir Thomas Villiers who was, by then, living in Knightsbridge, London. Don Charles and Rukmini were the husband and daughter of Vimala Wijewardene.[2] In 1961 Rukmini Beligammana (née Wijewardene) sold it to an Italian Benedictan monk. Upon purchasing the house and property the Italian monk removed silver cutlery and a few items of furniture to recover his investment and also make a profit. After leaving it unoccupied for two years he subsequently donated the house and property to the Ampitiya Benedictine Monastery in 1963. The house is well preserved along with its period fittings and furniture and is open to visitors.'),
(17, 'Worlds End', 'Worlds_End.jpg', 0, 10, 1672546234, 'World\'s End is located within the Horton Plains National Park in Nuwara Eliya District, Sri Lanka. It is a sheer cliff, with a drop of about 4,000 feet (1,200 m).[1] It is one of the most visited parts of the Park and a key tourist attraction in the Nuwara Eliya District and the country.[2][3]\r\n\r\n1 km away from the main cliff is a smaller cliff with a 1,000 feet (300 m) drop, colloquially known as Mini World\'s End. The Indian Ocean, 81 km to the south, can be observed on clear days.'),
(18, 'Ella Natural Spa', 'Ella_Natural_Spa.jpg', 0, 4, 1672546388, 'Ella Natural Spa & Saloon is a new Experience for Travelers in Ella. We offer various types of Services to Our Customers like Full Body Massages, Manicure, Pedicure, Waxing, Mehendi, Etc'),
(19, 'Dhowa Rock Temple', 'Dhowa_Rock_Temple.jpg', 0, 3, 1672546582, 'Showa Rock Temple or Dowa Raja Maha Viharaya (Sinhala: දෝව රජ මහා විහාරය) is a heritage listed rock temple in Sri Lanka, located in the central mountains of the Uva Province. It is adjacent to Showa, a small village situated on the Badulla-Bandarawela main road (approximately 7.5 km (4.7 mi) north of Bandarawela). The temple is 210 km (130 mi) east of Colombo and 120 km (75 mi) south of Kandy.'),
(20, 'Dunhinda Falls', 'Dunhinda_Falls.jpg', 0, 4, 1672546853, 'Dunhinda Falls is a waterfall located about 5 kilometers (3.1 mi) from Badulla in the lower central hills of Sri Lanka.\r\n\r\nThe waterfall, which is 64 meters (210 ft) high, gets its name from the smoky dew drops spray, (Dun in Sinhala means mist or smoke) which surrounds the area at the foot of the waterfall.\r\n\r\nThe fall is created by the Bandulu Oya which flows through Badulla.'),
(21, 'Ella Spice Garden', 'Ella_Spice_Garden.jpg', 0, 3, 1672547183, 'Sri Lanka is not known as the ‘Spice Island’ for nothing! The country has the best and the most exotic spices grown indigenously. If you are a food connoisseur and want to learn where your spices come from, a visit to the Ella Spice Garden is an important place to visit in Ella. \r\n\r\nThis is a private setup run by a local family to make people appreciative of local growing techniques and the thousands of varieties of Lankan spices. An English-speaking person will give you a tour of this beautiful property. \r\n\r\nTravelers love to walk amidst the intoxicating fragrance of spices like cinnamon, cloves, chilies, turmeric, nutmeg, cacao, coffee, etc. Here, you can also take a particular cooking class or indulge in a wonderful traditional meal. Just make sure to book your visit to these wonderful tourist places in Ella.\r\n\r\n\r\nLocation: Wellawaya-Ella-Kumbalwela highway, Ella\r\n\r\nTimings: 5:00- 8:00 pm every day\r\n\r\nPrice: LKR 3,800, INR 1,500'),
(22, 'Kataragama Perahera Festival', 'Kataragama_Perahera_Festival.jpg', 0, 5, 1672547368, 'The Sri Lanka Kataragama Perahera or Festival is an annual festival that takes place in JulyAugust in Kataragama, in the Southern part of Sri Lanka and runs for about 2 weeks and is dedicated to the Hindu God of war and wisdom God Skanda known to Sri Lankans as Kataragama Deviyo.\r\n\r\nThe Sri Lanka Kataragama Perahera or Festival is a procession of elephants etc like in any Perahera in Sri Lanka commences from the Temple of Kataragama, Sri Lanka past the temples of other Gods to the Temple of the aboriginal jungle goddess Valli Amman. Devotees (Sri Lankans and tourists) of all religions join in the festivities including the aboriginal Veddahs of Sri Lanka. They cleanse themselves in the Menik River, Kataragama, Sri Lanka, and make their offering to the shrine. Some Sri Lankans perform excruciating acts such as swinging on hooks pierced to their skin, some roll barely clad on hot sands near the temple, and some Sri Lankans tread on red-hot embers. Kavadi (burden) Dancing is the dance of the peacock, the vehicle of God Skanda. The prop used for the Kavadi (burden) Dancing is a 2 piece arched structure attached to a cross pole and can weigh up to 30 kg. This demonstrates the devotees’ (Sri Lankans’) gratitude in return for vows made or favors sought.\r\n\r\nWe can tailor-make programs to Sri Lanka according to your requirements to include the Kataragama Perahera or Festival along with other sights like Culture, Nature, Wildlife, Archaeology, Beach stays and even a game of golf if interested. The season for the beaches in Sri Lanka in JulyAugust is on the Eastern coast of Sri Lanka like Nilaveli, Trincomalee, Passikudah, and Arugam Bay to mention a few. However, the beaches on the Western Coast of Sri Lanka like Unawatuna, Hikkaduwa, Bentota, and Ahungalla are also pleasant at this time of the year.'),
(23, 'Kataragama Temple', 'Kataragama_Temple.jpg', 0, 2, 1672547508, 'Kataragama temple (Sinhala: රුහුණු කතරගම දේවාලය, lit. \'Ruhuṇu Kataragama Dēvālaya\', Tamil: கதிர்காமம் முருகன் கோயில், lit. \'Katirkāmam Murugan Kōvil\') in Kataragama, Sri Lanka, is a temple complex dedicated to Buddhist guardian deity Kataragama deviyo and Hindu War God Murugan. It is one of the few religious sites in Sri Lanka that is venerated by Buddhists, Hindus, Muslims, and the Vedda people.[3] For most of the past millennia, it was a jungle shrine very difficult to access; today it is accessible by an all-weather road. The shrines and the nearby Kiri Vehera are managed by Buddhists, the shrines dedicated to Teyvāṉai and Shiva are managed by Hindus, and the mosque by Muslims.\r\n\r\nThe shrine has for centuries attracted Tamil Hindus from Sri Lanka and South India who undertook an arduous pilgrimage on foot. Since the latter half of the 20th century, the site has risen dramatically among Sinhalese Buddhists who today constitute the majority of the visitors.\r\n\r\nThe cult of the Kataragama devil has become the most popular amongst the Sinhalese people. Several legends and myths are associated with the deity and the location, differing by religion, ethnic affiliation, and time. These legends are changing with the deity\'s burgeoning popularity with Buddhists, as the Buddhist ritual specialists and clergy try to accommodate the deity within Buddhist ideals of nontheism. With the change in devotees, the mode of worship and festivals has changed from that of Hindu orientation to one that accommodates Buddhist rituals and theology. It is difficult to reconstruct the factual history of the place and the reason for its popularity amongst Sri Lankans and Indians based on legends and available archeological and literary evidence alone, although the place seems to have a venerable history. The lack of clear historical records and resultant legends and myths fuel the conflict between Buddhists and Hindus regarding the ownership and the mode of worship at Kataragama.[5]\r\n\r\nThe priests of the temple are known as Kapuralas and are believed to be descended from the Vedda people. Veddas, too, have a claim on the temple, a nearby mountain peak, and a locality through several legends. There is a mosque and a few tombs of Muslim pious men buried nearby. The temple complex is also connected to other similar temples in Eastern Province dedicated to Murugan which are along the path of pilgrimage from Jaffna in the north to Kataragama in the south of the island; Arunagirinathar traversed this pilgrimage route in the 15th century.[6] The vicinity of the temple complex is used for secretive practices of sorcery and cursing peculiar to Sri Lanka (Source or reference to mysticism is missing). The entire temple complex was declared a holy place by the government of Sri Lanka in the 1950s; since then political leaders have contributed to its maintenance and upkeep.'),
(24, 'Rathna Ella waterfall', 'Rathna_Ella_waterfall.jpg', 0, 1, 1672547666, 'Rathana Ella (field of gems), at 101 m (331 ft), is the 14th highest waterfall in Sri Lanka, situated in Hasalaka City, Kandy District.\r\n\r\nThe area surrounding the waterfall is highly verdant. The main occupation of the villagers in Rathana Ella is paddy cultivation. The Rathana Ella waterfall is very important to the village, as it supplies water for irrigation works and paddy cultivation.\r\n\r\nIn the past, people built small anicut to get water from Rathana Ella for their agricultural activities. Rathana Ella supplies enough water to assist 200 farmers in earning a living in paddy cultivation.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `email`, `password`) VALUES
(1, 'test', 'test@touronline.space', 'test_123'),
(8, 'thamash', 'thamashweragoda@gmail.com', 'thamash'),
(9, 'subhanu', 'mindacid111@gmail.com', 'mamaimodaya'),
(10, 'hasindu', 'hasinduvimoksha@gmail.com', '112111'),
(11, 'shshsh', 'shej@gmail.com', 'pilly'),
(12, 'datdsg', 'td12345tharindu@gmail.com', 'Datdsg@123'),
(13, 'dmunimsara', 'nimsara.umi@gmail.com', 'Nimsara@2023'),
(14, 'sanidu', 'sanidusulohithj@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `userId` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`userId`, `time`) VALUES
(1, 1672549393),
(1, 1672549399),
(1, 1672549402),
(1, 1672549409),
(1, 1672549437),
(1, 1672549441),
(0, 1672549503),
(0, 1672549512),
(0, 1672549765),
(0, 1672549810),
(0, 1672549892),
(0, 1672549902),
(0, 1672549937),
(0, 1672550005),
(0, 1672554469),
(0, 1672556926),
(0, 1672556931),
(0, 1672556996),
(0, 1672561316),
(0, 1672564011),
(0, 1672579905),
(0, 1672579910),
(0, 1672579939),
(0, 1672579979),
(0, 1672582934),
(0, 1672582971),
(0, 1672584526),
(0, 1672588290),
(0, 1672588305),
(0, 1672588315),
(0, 1672588517),
(0, 1672588570),
(11, 1672588588),
(0, 1672623242),
(0, 1672623271),
(0, 1672623281),
(0, 1672629286),
(0, 1672629541),
(0, 1672629603),
(0, 1672629605),
(0, 1672629659),
(0, 1672629660),
(0, 1672629660),
(0, 1672629661),
(0, 1672629663),
(0, 1672629676),
(0, 1672629680),
(0, 1672629680),
(0, 1672629690),
(0, 1672629697),
(0, 1672629998),
(0, 1672630025),
(0, 1672630047),
(0, 1672630205),
(0, 1672630267),
(12, 1672630527),
(12, 1672630546),
(12, 1672630556),
(0, 1672630755),
(0, 1672630898),
(0, 1672630905),
(0, 1672630921),
(0, 1672630935),
(0, 1672630937),
(0, 1672630938),
(0, 1672631002),
(0, 1672631022),
(0, 1672631060),
(0, 1672631147),
(0, 1672631195),
(0, 1672631227),
(0, 1672631278),
(0, 1672631311),
(0, 1672631331),
(0, 1672631442),
(0, 1672631590),
(0, 1672631593),
(0, 1672631615),
(0, 1672631629),
(0, 1672631654),
(0, 1672631659),
(0, 1672631817),
(0, 1672631917),
(0, 1672631942),
(0, 1672632086),
(0, 1672632119),
(0, 1672632145),
(1, 1672632218),
(0, 1672632329),
(0, 1672632359),
(0, 1672632397),
(0, 1672632406),
(0, 1672632431),
(1, 1672632448),
(1, 1672632680),
(0, 1672633379),
(0, 1672633394),
(0, 1672639333),
(0, 1672641371),
(0, 1672641568),
(0, 1672641571),
(0, 1672641582),
(0, 1672641623),
(0, 1672644992),
(0, 1672648039),
(0, 1672648080),
(0, 1672652338),
(0, 1672652399),
(0, 1672652862),
(0, 1672652869),
(0, 1672652879),
(0, 1672652981),
(0, 1672653027),
(0, 1672654872),
(0, 1672654933),
(1, 1672654962),
(1, 1672654985),
(1, 1672654996),
(1, 1672655012),
(1, 1672655015),
(0, 1672655125),
(0, 1672655309),
(0, 1672655340),
(0, 1672655397),
(0, 1672674071),
(0, 1672674159),
(0, 1672674181),
(0, 1672674338),
(0, 1672674390),
(0, 1672674437),
(0, 1672675927),
(0, 1672714021),
(0, 1672714120),
(0, 1672715648),
(0, 1672717120),
(0, 1672739061),
(0, 1672739061),
(0, 1672756537),
(0, 1672801854),
(0, 1672801890),
(0, 1672801905),
(0, 1672801944),
(0, 1672808111),
(0, 1672808121),
(0, 1672808135),
(0, 1672808248),
(0, 1672808278),
(0, 1672814355),
(0, 1672824613),
(0, 1672824644),
(0, 1672851857),
(0, 1672985919),
(0, 1672986651),
(0, 1673046378),
(0, 1673049467),
(0, 1673108719),
(0, 1673136830),
(0, 1673136992),
(0, 1673188652),
(0, 1673193757),
(0, 1673218177),
(0, 1673247687),
(0, 1673247932),
(0, 1673257781),
(0, 1673279068),
(12, 1673279073),
(0, 1673403188),
(0, 1673448072),
(0, 1673466601),
(0, 1673493702),
(0, 1673498546),
(0, 1673498574),
(0, 1673498594),
(0, 1673498664),
(0, 1673498679),
(9, 1673508752),
(0, 1673542571),
(0, 1673586550),
(0, 1673601783),
(12, 1673601800),
(0, 1673601806),
(0, 1673616904),
(0, 1673693371),
(0, 1673715697),
(0, 1673753902),
(0, 1673798874),
(0, 1673798913),
(0, 1673855231),
(0, 1673855271),
(0, 1673855323),
(0, 1673855335),
(0, 1673872314),
(0, 1673876569),
(0, 1673876572),
(0, 1673949575),
(0, 1673950448),
(0, 1673951129),
(0, 1673953284),
(0, 1673953387),
(0, 1673956893),
(0, 1674057437),
(0, 1674148079),
(0, 1674210492),
(0, 1674212931),
(0, 1674212962),
(0, 1674213036),
(0, 1674268589),
(0, 1674397341),
(0, 1674479538),
(0, 1674491663),
(0, 1674566429),
(0, 1674567491),
(0, 1674569929),
(0, 1674610773),
(0, 1674704314),
(0, 1674704347),
(0, 1674704360),
(0, 1674704382),
(0, 1674704409),
(0, 1674704466),
(0, 1674704583),
(0, 1674704602),
(0, 1674704878),
(0, 1674704941),
(0, 1674704963),
(0, 1674709618),
(0, 1674748204),
(0, 1674796272),
(0, 1675009636),
(0, 1675251258),
(0, 1675251265),
(0, 1675251286),
(0, 1675251340),
(0, 1675251406),
(0, 1675251442),
(0, 1675308108),
(0, 1675308720),
(0, 1675470618),
(0, 1675497334),
(0, 1675497482),
(0, 1675740654),
(0, 1675866302),
(0, 1675919272),
(0, 1675926881),
(0, 1675927284),
(0, 1675927299),
(0, 1675927535),
(0, 1675927950),
(0, 1675927958),
(0, 1675928036),
(0, 1675928070),
(0, 1675928317),
(0, 1675928356),
(0, 1675928366),
(0, 1675928518),
(0, 1675931895),
(0, 1675939231),
(0, 1675940001),
(0, 1675940069),
(0, 1675940171),
(0, 1675940233),
(0, 1675940267),
(0, 1675940516),
(0, 1675940585),
(0, 1675940757),
(0, 1675940881),
(0, 1675940939),
(0, 1675941169),
(0, 1675941309),
(0, 1675941471),
(0, 1675941478),
(0, 1675941480),
(0, 1675941480),
(0, 1675941487),
(0, 1675941524),
(0, 1675941526),
(0, 1675941600),
(0, 1675941650),
(0, 1675941680),
(0, 1675941905),
(0, 1675941924),
(0, 1675942050),
(0, 1675949099),
(0, 1675950930),
(0, 1675950935),
(0, 1675950939),
(0, 1675950944),
(0, 1675950970),
(0, 1675950973),
(0, 1675950978),
(0, 1675950994),
(0, 1675950999),
(0, 1675951005),
(0, 1675951193),
(0, 1675951322),
(1, 1675951855),
(1, 1675951868),
(1, 1675951878),
(1, 1675951929),
(0, 1675951947),
(0, 1675952078),
(0, 1675952101),
(1, 1675952340),
(1, 1675952646),
(1, 1675953032),
(1, 1675953065),
(1, 1675953162),
(1, 1675953207),
(1, 1675953219),
(1, 1675953235),
(1, 1675953309),
(1, 1675953333),
(1, 1675953372),
(1, 1675953390),
(1, 1675953404),
(1, 1675953505),
(1, 1675953515),
(1, 1675953595),
(1, 1675953617),
(1, 1675953641),
(1, 1675953755),
(1, 1675953799),
(1, 1675953827),
(1, 1675953870),
(1, 1675953920),
(1, 1675953941),
(1, 1675953964),
(1, 1675954095),
(1, 1675954401),
(1, 1675954538),
(1, 1675956545),
(0, 1675956577),
(0, 1675956684),
(1, 1675956702),
(0, 1675956708),
(0, 1675956713),
(1, 1675956802),
(0, 1675956807),
(1, 1675956882),
(0, 1675956900),
(0, 1675956927),
(1, 1675956939),
(0, 1675956948),
(0, 1675957178),
(0, 1675958301),
(0, 1675960352),
(0, 1675960421),
(0, 1675960457),
(0, 1675960638),
(0, 1675960712),
(0, 1675960787),
(1, 1675960806),
(0, 1676028553),
(0, 1676033941),
(0, 1676033954),
(0, 1676033969),
(0, 1676033978),
(0, 1676034084),
(0, 1676034097),
(0, 1676034110),
(0, 1676034117),
(0, 1676034122),
(0, 1676034131),
(0, 1676034177),
(0, 1676034223),
(0, 1676034288),
(13, 1676034366),
(13, 1676035373),
(0, 1676035485),
(0, 1676035490),
(0, 1676036307),
(1, 1676036991),
(1, 1676039029),
(1, 1676039036),
(1, 1676039045),
(1, 1676039157),
(1, 1676039164),
(1, 1676039172),
(1, 1676039185),
(1, 1676039343),
(1, 1676039350),
(1, 1676039516),
(0, 1676039522),
(0, 1676039542),
(0, 1676039546),
(12, 1676039556),
(0, 1676040230),
(0, 1676041530),
(0, 1676041969),
(0, 1676043414),
(0, 1676043603),
(0, 1676043618),
(14, 1676043665),
(14, 1676043703),
(14, 1676043719),
(14, 1676043737),
(14, 1676043744),
(14, 1676043756),
(14, 1676043825),
(0, 1676044309),
(0, 1676045484),
(0, 1676045744),
(0, 1676047011),
(12, 1676047048),
(12, 1676047052),
(0, 1676047082),
(0, 1676047096),
(0, 1676047110),
(0, 1676047211),
(0, 1676047271),
(0, 1676047506),
(0, 1676047603),
(0, 1676047686),
(0, 1676047931),
(0, 1676047948),
(0, 1676048080);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD KEY `placeId` (`placeId`);

--
-- Indexes for table `likeplace`
--
ALTER TABLE `likeplace`
  ADD KEY `userId` (`userId`),
  ADD KEY `placeId` (`placeId`);

--
-- Indexes for table `placeimg`
--
ALTER TABLE `placeimg`
  ADD PRIMARY KEY (`placeId`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`placeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `placeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`placeId`) REFERENCES `places` (`placeId`);

--
-- Constraints for table `likeplace`
--
ALTER TABLE `likeplace`
  ADD CONSTRAINT `likeplace_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `likeplace_ibfk_2` FOREIGN KEY (`placeId`) REFERENCES `places` (`placeId`);

--
-- Constraints for table `placeimg`
--
ALTER TABLE `placeimg`
  ADD CONSTRAINT `placeimg_ibfk_1` FOREIGN KEY (`placeId`) REFERENCES `places` (`placeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
