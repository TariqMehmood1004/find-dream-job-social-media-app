import '../imports.dart';

class TopRatedSpecialists extends StatelessWidget {
  const TopRatedSpecialists({super.key, required this.users});

  final List<UsersModel> users;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: Get.height * 0.19,
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemCount: users.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigation.push(
                          context, SpecialistsDetails(user: users[index]));
                    },
                    radius: 20,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: Get.width * 0.3,
                      margin: const EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // color: colorPink.withOpacity(0.05),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image(
                                      width: 100,
                                      height: 90,
                                      image: NetworkImage(
                                        users[index].image.toString(),
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: Get.height * 0.01),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,
                                                  size: 12, color: colorOrange),
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
                                right: 0,
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
    );
  }
}
