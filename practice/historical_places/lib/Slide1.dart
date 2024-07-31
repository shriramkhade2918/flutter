import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State createState() => _ProjectState();
}

List<Map> beachImages = [
  {
    "name": "Candolim",
    "location": "Goa",
    "image": "images/Best places/Beach/Candolim1.jpg",
    "info":
        ''' One of the longest beaches in Goa, Candolim Beach is also sometimes called the gateway to the other popular beaches in the state. The beach that begins from Fort Aguada is comparatively quieter and is perfect for lazing, though for watersports lovers, there are some activities like parasailing and water skiing.
                            The beach is quite popular amongst the people from the Rajneesh Ashram in Pune who visit here on a short break. The Candolim-Calangute Road is dotted with a number of shops and restaurants for the tourists to shop and hangout. People who are seeking a quieter staying place in Goa usually book their hotel near Candolim Beach.'''
  },
  {
    "name": "Kovalam",
    "location": "Keral",
    "image": "images/Best places/Beach/kovalam Beach keral.jpg",
    "info":
        '''Kovalam is an internationally renowned beach with three adjacent crescent beaches. It has been a favourite haunt of tourists since the 1930s. A massive rocky promontory on the beach has created a beautiful bay of calm waters ideal for sea bathing.
The leisure options at this beach are plenty and diverse. Sunbathing, swimming, herbal body toning massages, special cultural programmes and catamaran cruising are some of them. The tropical sun acts so fast that one can see the faint blush of coppery tan on the skin in a matter of minutes. Life on the beach begins late in the day and carries on well into the night. The beach complex includes a string of budget cottages, Ayurvedic health resorts, convention facilities, shopping zones, swimming pools, Yoga and Ayurvedic massage centres.'''
  },
  {
    "name": "Patnem ",
    "location": "Goa",
    "image": "images/Best places/Beach/Goa.jpeg",
    "info":
        '''If you are excited by the thought of enjoying Goa’s juicy seafood while having an exciting day at the beach, then Patnem Beach is where you should head to. It is endearingly referred to as a little slice of paradise, perhaps because the only noise that greets you here are those of waves crashing on the shore, rustling of leaves of the coconut trees & the chitchat of tourists & locals.
Although Patnem Beach falls short when it comes to various activities, it more than makes up for that with its solitude & tranquillity. One of the attractions of visiting this beach is that you can sample the delicious seafood delicacies & authentic Goan cuisine at the numerous shacks lining the beach.'''
  }

  // "",
  // ""
];

List<Map> naturImages = [
  {
    "name": "Candolim",
    "location": "Goa",
    "image": "images/Best places/natural area/borra caves.jpg",
    "info":
        ''' One of the longest beaches in Goa, Candolim Beach is also sometimes called the gateway to the other popular beaches in the state. The beach that begins from Fort Aguada is comparatively quieter and is perfect for lazing, though for watersports lovers, there are some activities like parasailing and water skiing.
                            The beach is quite popular amongst the people from the Rajneesh Ashram in Pune who visit here on a short break. The Candolim-Calangute Road is dotted with a number of shops and restaurants for the tourists to shop and hangout. People who are seeking a quieter staying place in Goa usually book their hotel near Candolim Beach.'''
  },
  {
    "name": "Kovalam",
    "location": "Keral",
    "image": "images/Best places/natural area/Magnetic hill.jpg",
    "info":
        '''Kovalam is an internationally renowned beach with three adjacent crescent beaches. It has been a favourite haunt of tourists since the 1930s. A massive rocky promontory on the beach has created a beautiful bay of calm waters ideal for sea bathing.
The leisure options at this beach are plenty and diverse. Sunbathing, swimming, herbal body toning massages, special cultural programmes and catamaran cruising are some of them. The tropical sun acts so fast that one can see the faint blush of coppery tan on the skin in a matter of minutes. Life on the beach begins late in the day and carries on well into the night. The beach complex includes a string of budget cottages, Ayurvedic health resorts, convention facilities, shopping zones, swimming pools, Yoga and Ayurvedic massage centres.'''
  },
  {
    "name": "Patnem ",
    "location": "Goa",
    "image": "images/Best places/city/BANGALORE.jpg",
    "info":
        '''If you are excited by the thought of enjoying Goa’s juicy seafood while having an exciting day at the beach, then Patnem Beach is where you should head to. It is endearingly referred to as a little slice of paradise, perhaps because the only noise that greets you here are those of waves crashing on the shore, rustling of leaves of the coconut trees & the chitchat of tourists & locals.
Although Patnem Beach falls short when it comes to various activities, it more than makes up for that with its solitude & tranquillity. One of the attractions of visiting this beach is that you can sample the delicious seafood delicacies & authentic Goan cuisine at the numerous shacks lining the beach.'''
  }

  // "",
  // ""
];

// List<String> naturImages = [
//   "",
//   "",
//   "images/Best places/natural area/Valley of Flowers.jpg"
// ];
List<String> cityImages = [
  "images/Best places/city/AMRITSAR.jpg",
  "images/Best places/city/NAVI-MUMBAI.jpg",
  "images/Best places/city/SURAT.jpg"
];

class _ProjectState extends State {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(246, 113, 50, 239),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back,
                  //  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Best Places",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    // color: Colors.white
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 80, 78, 78),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 410,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 233, 232, 227),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Beach areas ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: beachImages.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            showBottumSheet(index);
                            setState(() {});
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    image:
                                        AssetImage(beachImages[index]["image"]),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Natural areas ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: naturImages.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            showBottumSheet(index);
                            setState(() {
                              
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                    image:
                                        AssetImage(naturImages[index]["image"]),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Towns and cities",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: cityImages.length,
                        itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.all(10),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage(cityImages[index]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showBottumSheet(int ind) {
    showModalBottomSheet(
        context: context,
        builder: ((context) {
          return SingleChildScrollView(
            child: Container(
              width: 400,
              decoration:const BoxDecoration
              (
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      beachImages[ind]["name"],
                      style:
                        const  TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(beachImages[ind]["image"]),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          beachImages[ind]["name"],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Location :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          beachImages[ind]["location"],
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: const [
                        Text(
                          "Information :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text(
                        beachImages[ind]["info"],
                        style:const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
