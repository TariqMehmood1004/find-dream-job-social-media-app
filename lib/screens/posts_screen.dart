import '../imports.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
    required this.posts,
  });

  final List<PostsModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 20, right: 20),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.transparent,
          child: Container(
            width: Get.width,
            // height: Get.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: colorSecondry,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        posts[index].user!.image!,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                text: posts[index]
                                    .user!
                                    .name!
                                    .split(' ')
                                    .take(2)
                                    .join(' '),
                                color: colorBlackLight,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              Row(
                                children: [
                                  CustomTextWidget(
                                    text:
                                        "${posts[index].user!.occupation!} at ",
                                    color: colorBlackLight,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                  CustomTextWidget(
                                    text: posts[index].company!,
                                    color: colorBlue,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CustomTextWidget(
                            text: 'at ${posts[index].time!}',
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: colorGray,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CustomTextWidget(
                    text: posts[index].description!,
                    color: colorDark,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: colorSecondry,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: posts[index].image != null &&
                              posts[index].image!.isNotEmpty
                          ? Image.network(posts[index].image!)
                          : SizedBox(),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    // color: colorPink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icon(TablerIcons.thumb_up,
                            color: colorBlackLight, size: 20),
                        backgroundColor: Colors.transparent,
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icon(TablerIcons.thumb_down,
                            color: colorBlackLight, size: 20),
                        backgroundColor: Colors.transparent,
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icon(TablerIcons.message,
                            color: colorBlackLight, size: 20),
                        backgroundColor: Colors.transparent,
                      ),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icon(TablerIcons.share_2,
                            color: colorBlackLight, size: 20),
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: colorGray.withOpacity(0.2),
          indent: 10,
          endIndent: 10,
          height: 20,
          thickness: 1,
        );
      },
    );
  }
}
