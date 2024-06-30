import 'imports.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<UsersModel> users = [
    UsersModel(
        name: 'Tariq Mehmood',
        image: 'https://avatars.githubusercontent.com/u/63381098?v=4',
        occupation: 'Software Engineer',
        phone: '0300-1234567',
        email: 'tariq.mehmood@me.com',
        bio: 'Software Engineer',
        rating: '4'),
    UsersModel(
        name: 'John',
        image:
            'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1719722111~exp=1719725711~hmac=6a38b1df3b4f133d3805ebd163154a3d2c483d67f8e1b2104ab56f8089464ff9&w=500',
        occupation: 'HR Manager',
        phone: '0300-1234567',
        email: 'john@me.com',
        bio: 'Software Engineer',
        rating: '5'),
    UsersModel(
        name: 'Shanaz Ahmad Naaz Ahmad Ahmad',
        image:
            'https://img.freepik.com/free-photo/smiling-young-pretty-caucasian-girl-sun-glasses-looking-camera-orange_141793-93164.jpg?t=st=1719724414~exp=1719728014~hmac=77055e852754532eb4fddd172a30782a0a7dbde8324a37ecf47be2e8d4623a45&w=500',
        occupation: 'ML Engineer',
        phone: '0300-1234567',
        email: 'ahmad@me.com',
        bio: 'Software Engineer',
        rating: '2'),
    UsersModel(
        name: 'Makia Mai',
        image:
            'https://img.freepik.com/free-photo/annoyed-pretty-brunette-caucasian-girl-sun-glasses-stands-with-crossed-arms-looking-side-green_141793-69508.jpg?t=st=1719724926~exp=1719728526~hmac=efab9300098762920ea8754e51717453849b431645ba628889d78b7179d7b322&w=500',
        occupation: 'ML Engineer',
        phone: '0300-1234567',
        email: 'ahmad@me.com',
        bio: 'Software Engineer',
        rating: '3'),
    UsersModel(
        name: 'Tallat Mehmood',
        image:
            'https://img.freepik.com/free-photo/handsome-bearded-businessman-rubbing-hands-having-deal_176420-18778.jpg?t=st=1719724956~exp=1719728556~hmac=8eb08eba3ebe12bf03f11a6175e73afd770984177466aec631c6407a33083d38&w=500',
        occupation: 'ML Engineer',
        phone: '0300-1234567',
        email: 'ahmad@me.com',
        bio: 'Software Engineer',
        rating: '1'),
    UsersModel(
        name: 'Jahanzaib Ijaz',
        image:
            'https://img.freepik.com/free-photo/close-up-portrait-young-smiling-man_171337-20064.jpg?t=st=1719725013~exp=1719728613~hmac=1cd60de700df9621b58b308568dbb3c2eff33b46f292b8707bde185c844d2913&w=500',
        occupation: 'ML Engineer',
        phone: '0300-1234567',
        email: 'ahmad@me.com',
        bio: 'Software Engineer',
        rating: '4'),
    UsersModel(
        name: 'Soha Muqadas',
        image:
            'https://img.freepik.com/free-photo/attractive-enthusiastic-armenian-young-woman-curly-hair-pointing-looking-intrigued-left-show-index-fingers-awesome-blank-space-advertisement-smirking-joyfully-introducing-product-white-background_176420-35016.jpg?t=st=1719725041~exp=1719728641~hmac=365f6c0ba6654a9b63938d7f7e3f985d466ac8eed68c58058b298e68a7ea0293&w=500',
        occupation: 'ML Engineer',
        phone: '0300-1234567',
        email: 'ahmad@me.com',
        bio: 'Software Engineer',
        rating: '2'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: CustomSearchProfile(),
            ), // Custom Search Profile
            // Top-rated specialists

            // Top-rated specialists
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 8),
              child: const CustomTextWidget(
                text: "Top-rated specialists",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: Get.height * 0.14,
                      padding: const EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemCount: users.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigation.push(context,
                                  SpecialistsDetails(user: users[index]));
                            },
                            radius: 20,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              // height: Get.height * 0.16,
                              width: Get.width * 0.3,
                              margin: const EdgeInsets.only(right: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: colorPink.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Card(
                                elevation: 0,
                                color: Colors.transparent,
                                clipBehavior: Clip.hardEdge,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: Get.width * 0.06,
                                            backgroundImage: NetworkImage(
                                              users[index].image.toString(),
                                            ),
                                          ),
                                          SizedBox(height: Get.height * 0.01),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  CustomTextWidget(
                                                    text: users[index]
                                                        .name!
                                                        .split(' ')[0],
                                                    fontFamily: 'Arial',
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(Icons.star,
                                                          size: 12,
                                                          color: colorOrange),
                                                      SizedBox(width: 5),
                                                      CustomTextWidget(
                                                        text: users[index]
                                                            .rating
                                                            .toString(),
                                                        fontFamily: 'Arial',
                                                        fontSize: 12,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              CustomTextWidget(
                                                text: users[index].occupation!,
                                                fontFamily: 'Arial',
                                                fontSize: 10,
                                                color: colorGray,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: 2,
                                        right: 23,
                                        child: Container(
                                          width: Get.width * 0.03,
                                          height: Get.width * 0.03,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colorOrange,
                                            border: Border.all(
                                              color: colorSecondry,
                                              width: 1.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
