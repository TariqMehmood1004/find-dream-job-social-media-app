import '../imports.dart';

class SpecialistsDetails extends StatefulWidget {
  const SpecialistsDetails({super.key, required this.user});

  final UsersModel user;

  @override
  State<SpecialistsDetails> createState() => _SpecialistsDetailsState();
}

class _SpecialistsDetailsState extends State<SpecialistsDetails> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: CustomTextWidget(
            text: widget.user.name!.split(' ').take(2).join(' '),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colorBlack,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TopRatedSpecialistsScreen(widget: widget),
            Container(
              height: 80,
              color: colorPrimary,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        cardBackgroundColor: colorBlackLight,
                        title: "Send Message",
                        textColor: colorPrimary,
                        textAlign: TextAlign.center,
                        postIcon: Container(
                          margin: const EdgeInsets.only(left: 2),
                          child: CustomIconButton(
                            onPressed: () {},
                            icon: Icon(TablerIcons.send,
                                color: colorPrimary, size: 20),
                            backgroundColor: colorDark,
                          ),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      onPressed: () {},
                      icon: Icon(TablerIcons.camera,
                          color: colorPrimary, size: 20),
                      backgroundColor: colorBlackLight,
                    ),
                    CustomIconButton(
                      onPressed: () {},
                      icon: const Icon(TablerIcons.bookmark,
                          color: colorPrimary, size: 20),
                      backgroundColor: colorBlackLight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopRatedSpecialistsScreen extends StatelessWidget {
  const TopRatedSpecialistsScreen({
    super.key,
    required this.widget,
  });

  final SpecialistsDetails widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.user.image!,
                  height: Get.height * 0.5,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: Get.height * 0.01 + 10,
                right: Get.width * 0.01 + 10,
                child: CustomIconButton(
                  onPressed: () {},
                  icon: const Icon(TablerIcons.bookmark,
                      color: colorPrimary, size: 20),
                  backgroundColor: colorBlackLight,
                ),
              ),
              Positioned(
                bottom: Get.height * 0.01 + 10,
                right: Get.width * 0.01 + 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: colorBlue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CustomTextWidget(
                    text: widget.user.experience!,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: colorPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Card(
            color: colorPrimary,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextWidget(
                text: widget.user.name!,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: colorBlack,
              ),
            ),
          ),
          Card(
            color: colorPrimary,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextWidget(
                text: widget.user.email!,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: colorBlack,
              ),
            ),
          ),
          Card(
            color: colorPrimary,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextWidget(
                text: widget.user.bio!,
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: colorBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
