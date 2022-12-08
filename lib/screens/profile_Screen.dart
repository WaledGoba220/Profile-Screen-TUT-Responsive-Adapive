import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final listNames = [
    "Task 1",
    "Task 2",
    "Task 3",
    "Task 4",
    "Task 5",
  ];


  final listDates = [
    "12 Jan 2022, 8am - 10am",
    "12 Jan 2022, 8am - 10am",
    "12 Jan 2022, 8am - 10am",
    "12 Jan 2022, 8am - 10am",
    "12 Jan 2022, 8am - 10am",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // create App Bar
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today,
              color: Colors.black,
            ),
          ),
        ],
      ),

      // Body
      body: Container(
        color: Colors.blue[100],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo.shade400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Profile Person",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  Container(
                    color: Colors.blue[900],
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "More Details",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.watch_later,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              DateTime.now().toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Card(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/images/profile.jpg"),
                    ),
                    title: const Text(
                      "Waled Saied",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Software Developer",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(
                      Icons.error_outline,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        child: InkWell(
                          child: const Text(
                            "ACCEPT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            print("ACCEPT");
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: InkWell(
                          child: Text(
                            "DECLINE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[600],
                            ),
                          ),
                          onTap: () {
                            print("DECLINE");
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8,),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Text(
              "NOTES",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.indigo.shade400,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40,),
            Container(height:300,child: ListView.builder(
              itemCount: listNames.length,
                itemBuilder: (context,index) {

                return  Card(
                  child: ListTile(
                    leading:CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30,
                      child: Image.asset("assets/images/profile.jpg"),
                    ),
                    title:  Text(
                    listNames[index],
                      style:
                      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    subtitle:  Text(
                      listDates[index],
                      style:
                      const   TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(
                      Icons.error_outline,
                      color: Colors.blue,
                    ),
                  ),
                );

                },
            )),
          ],
        ),
      ),
    );
  }
}
