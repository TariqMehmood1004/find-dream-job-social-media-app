import 'imports.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: CustomSearchProfile(),
            ), // Custom Search Profile
            // Top-rated specialists

            // Top-rated specialists
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 8),
              child: CustomTextWidget(
                text: "Top-rated specialists",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),

            TopRatedSpecialists(users: users),

            // Posts Section
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 8),
              child: CustomTextWidget(
                text: "What's new?",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),

            Posts(posts: posts),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: colorBlackLight,
          elevation: 0,
          iconSize: 20,
          selectedLabelStyle: TextStyle(fontSize: 12, color: colorBlackLight),
          unselectedLabelStyle: TextStyle(fontSize: 12, color: colorBlackLight),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(TablerIcons.home, size: 20, color: colorBlackLight),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(TablerIcons.message_circle,
                    size: 20, color: colorBlackLight),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(TablerIcons.first_aid_kit,
                    size: 20, color: colorBlackLight),
                label: "Kit"),
            BottomNavigationBarItem(
                icon: Icon(TablerIcons.edit, size: 20, color: colorBlackLight),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(TablerIcons.user_circle,
                    size: 20, color: colorBlackLight),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
