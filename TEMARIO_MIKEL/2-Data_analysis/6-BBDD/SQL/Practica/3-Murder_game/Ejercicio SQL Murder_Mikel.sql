1ºTestigo

SELECT * FROM crime_scene_report WHERE date = '20180115' and type = 'murder' and city = 'SQL City'


    Output:
    date	  type	                description	city    
"20180115"	"murder"	"Security footage shows that there were 2 witnesses. The first witness lives at the last house on ""Northwestern Dr"". The second witness, named Annabel, lives somewhere on ""Franklin Ave""."	"SQL City"




SELECT * FROM person 
WHERE address_street_name = 'Franklin Ave'


    Output:
id	          name	       license_id   address_number	address_street_name	       ssn
"12207"	"Wilmer Wolever"	"509484"	    "139"	    "Franklin Ave"	        "636825374"
"16371"	"Annabel Miller"	"490173"	    "103"	    "Franklin Ave"	        "318771143"
"17683"	"Johnnie Schee"	    "968887"	    "1277"	    "Franklin Ave"	        "815977821"
"18651"	"Carleen Etoll"	    "356746"	    "22"	    "Franklin Ave"	        "193369255"
"22636"	"Zachary Ybarbo"	"768359"	    "785"	    "Franklin Ave"	        "285346605"
"24737"	"Gema Nantz"	    "273410"	    "3968"	    "Franklin Ave"	        "180545802"
"30654"	"Clarita Rickels"	"418084"	    "2254"	    "Franklin Ave"	        "714941023"
"32264"	"Shelby Dezeeuw"	"735415"	    "1391"	    "Franklin Ave"	        "143197463"
"33793"	"Amado Mattan"	    "161915"	    "99"	    "Franklin Ave"	        "125205748"
"34592"	"Cordell Lindamood"	"592762"	    "3657"	    "Franklin Ave"	        "509890333"
"36328"	"Domenic Laun"	    "971080"	    "3809"	    "Franklin Ave"	         "825329637"
"36400"	"Noe Pancoast"	    "895755"	    "3443"	    "Franklin Ave"          "732212073"
"37616"	"Katelyn Schwerin"	"430143"	    "332"	    "Franklin Ave"	        "392365033"
"46827"	"Bev Billiter"	    "643591"	    "2316"	    "Franklin Ave"	        "940192302"
"52059"	"Jordan Pelton"	    "686854"	    "2786"	    "Franklin Ave"	        "676224073"
"52075"	"Ezra Phy"	        "928109"	    "384"	    "Franklin Ave"	        "176404498"
"52121"	"Yelena Whitler"	"427830"	    "3185"	    "Franklin Ave"	        "115106155"
"54817"	"Guy Bustard"	    "213929"	    "591"	    "Franklin Ave"	        "820850670"
"54896"	"Patty Wamsley"	    "688488"	    "1097"	    "Franklin Ave"	        "725272037"
"56142"	"William Shiver"	"741336"	    "1926"	    "Franklin Ave"      	"219913461"
"57051"	"Lavette Koehl"	    "137365"	    "2284"	    "Franklin Ave"	        "776046786"
"59746"	"Ronny Gumbert"	    "469722"	    "3197"	    "Franklin Ave"      	"561067477"
"60944"	"Ricki Bidding"	    "443364"	    "2072"	    "Franklin Ave"      	"614976330"
"61001"	"Laurine Bousman"	"197150"	    "247"	    "Franklin Ave"	        "431360364"
"61437"	"Colette Hollomon"	"661377"	    "453"	    "Franklin Ave"      	"314956038"
"62292"	"Isaiah Holsten"	"913856"	    "747"	    "Franklin Ave"	        "995368430"
"62520"	"Mariah Lepetich"	"450447"	    "3086"	    "Franklin Ave"	        "797745632"
"67292"	"Renita Roperto"	"801041"	    "625"	    "Franklin Ave"	        "894442480"
"69719"	"Hope Arzabala"	    "311724"	    "841"	    "Franklin Ave"	        "270289620"
"70050"	"Whitney Herkenratt""138462"	    "3445"  	"Franklin Ave"	        "552518972"
"75510"	"Sebastian Ramnarase""333188"	    "1127"	    "Franklin Ave"	        "315716580"
"76128"	"Ressie Razze"	    "633497"	    "1199"	    "Franklin Ave"	        "456366143"
"78170"	"Graig Summy"	    "192325"	    "3387"	    "Franklin Ave"	        "277793306"
"78408"	"Dante Eschen"	    "218173"	    "3447"  	"Franklin Ave"	        "135374633"
"78658"	"Blake Chrones"	    "310242"	    "2014"	    "Franklin Ave"	        "423048084"
"78830"	"Candice Train"	    "814779"	    "3255"	    "Franklin Ave"	        "717570815"
"83003"	"Wilmer Casella"	"672050"	    "3564"	    "Franklin Ave"	        "569057540"
"83754"	"Maria Walsh"	    "201334"	    "2716"	    "Franklin Ave"	        "121282864"
"84531"	"Edgar Mendieta"	"315790"	    "3881"	    "Franklin Ave"	        "458847132"
"87521"	"Moses Ikerd"	    "638991"	    "2283"	    "Franklin Ave"	        "797715435"
"88966"	"Raul Eads"	        "570927"	    "2066"	    "Franklin Ave"	        "764132739"
"93947"	"Omer Andreoni"	    "605718"	    "13"	    "Franklin Ave"	        "322594288"
"95119"	"Hong Lisa"	        "825828"	    "375"	    "Franklin Ave"	        "113438176"
"97913"	"Cameron Dilick"	"971988"	    "2954"	    "Franklin Ave"	        "665147939"
"98744"	"Jordan Myntti"	    "256116"	    "3104"	    "Franklin Ave"	        "876030104"


SELECT * FROM person 
WHERE name = 'Annabel Miller'


    Output:
    id	        name	        license_id	address_number	address_street_name	      ssn
"16371"	   "Annabel Miller"	    "490173"	    "103"	        "Franklin Ave"	  "318771143"




SELECT * FROM get_fit_now_member
WHERE person_id = 16371


    Output:
    id	    person_id	      name	        membership_start_date	membership_status
"90081"	    "16371"	    "Annabel Miller"	    "20160208"	             "gold"




SELECT * FROM interview
WHERE person_id = 16371


     Output:
person_id	        transcript
"16371"	        "I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th."




SELECT * FROM get_fit_now_check_in
WHERE check_in_date = '20180109'


    Output:
membership_id	   check_in_date    check_in_time	check_out_time
"X0643"	            "20180109"	        "957"	        "1164"
"UK1F2"	            "20180109"	        "344"	        "518"
"XTE42"	            "20180109"	        "486"	        "1124"
"1AE2H"	            "20180109"	        "461"	        "944"
"6LSTG"	            "20180109"	        "399"	        "515"
"7MWHJ"	            "20180109"  	    "273"       	"885"
"GE5Q8"	            "20180109"	        "367"	        "959"
"48Z7A"	            "20180109"  	    "1600"       	"1730"
"48Z55"	            "20180109"	        "1530"	        "1700"
"90081"	            "20180109"	        "1600"      	"1700"




SELECT * FROM get_fit_now_member
WHERE person_id = 16371, name = 'Annabel Miller', membership_status = 16371 AND membership_start_date = 20160208 

    Output:




2ºTestigo

SELECT * FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1

     Output:
    id	        name	        license_id	    address_number	    address_street_name	       ssn
"14887"	    "Morty Schapiro"	"118009"	        "4919"	        "Northwestern Dr"	    "111564949"




SELECT * FROM interview
WHERE person_id = 14887

    Output:
person_id	        transcript
 14887     "I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W"."




SELECT * FROM get_fit_now_check_in
WHERE check_in_date = '20180109'

    Output:
membership_id	   check_in_date    check_in_time	check_out_time
"X0643"	            "20180109"	        "957"	        "1164"
"UK1F2"	            "20180109"	        "344"	        "518"
"XTE42"	            "20180109"	        "486"	        "1124"
"1AE2H"	            "20180109"	        "461"	        "944"
"6LSTG"	            "20180109"	        "399"	        "515"
"7MWHJ"	            "20180109"  	    "273"       	"885"
"GE5Q8"	            "20180109"	        "367"	        "959"
"48Z7A"	            "20180109"  	    "1600"       	"1730"
"48Z55"	            "20180109"	        "1530"	        "1700"
"90081"	            "20180109"	        "1600"      	"1700"





SELECT * FROM get_fit_now_member
WHERE id LIKE '48Z%' AND membership_status = 'gold'


    Output:

    id	    person_id	      name	     membership_start_date	  membership_status
  "48Z7A"	 "28819"	"Joe Germuska"	      "20160305"	           "gold"
  "48Z55"	 "67318"	"Jeremy Bowers"	      "20160101"	           "gold"
