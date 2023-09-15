import 'package:cv_app/edit_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    CvScreen(),
  );
}

//ignore: must_be_immutable
class CvScreen extends StatelessWidget {
  String? userName;
  String? userRole;
  String? userLocation;
  String? userBio;
  String? userSkills;
  List<String> userInfo = [
    "Oke Kolade",
    'Mobile Developer',
    'Lagos,Nigeria',
    'Passionate and hardworking Mobile Developer with a basic knowledge in creating cross-platform applications using Flutter. I am eager to learn and collaborate to bring ideas to live',
    'Flutter,Javascript,ui-design,Problem-soving,Mobile-architecture',
  ];

  CvScreen({
    super.key,
    this.userBio,
    this.userLocation,
    this.userName,
    this.userRole,
    this.userSkills,
  });

  @override
  Widget build(BuildContext context) {
    void editCv() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditingScreen(
            userName: userInfo[0],
            userRole: userInfo[1],
            userLocation: userInfo[2],
            userBio: userInfo[3],
            userSkills: userInfo[4],
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: const Color(0xff345083),
          title: const Text(
            'Resume',
            style: TextStyle(
                color: Color(0xffF5F5F5), fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: editCv,
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
              color: const Color(0xffF5F5F5),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/slack-img.jpg',
                    width: 80,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    userName ?? userInfo[0],
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(userRole ?? userInfo[1]),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_pin,
                          size: 15, color: Color(0xff686666)),
                      Text(
                        userLocation ?? userInfo[2],
                        style: const TextStyle(
                            color: Color(0xff686666), fontSize: 12),
                      )
                    ],
                  )
                ])
              ],
            ),
            //socials
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/slack.png',
                    ),
                    const Text(
                      'Koladeoke',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/git.png',
                    ),
                    const Text(
                      'oluwakolade',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/link.png',
                    ),
                    const Text(
                      'Oke Kolade',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/gmail.png',
                    ),
                    const Text(
                      'koladeoke3@gmail.com',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            Text(
              userBio ?? userInfo[3],
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff345083),
              ),
              child: const Text(
                'Skills',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffF5F5F5)),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      userSkills ?? userInfo[4],
                      style: const TextStyle(color: Color(0xff345083)),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
