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
    return Scaffold(
      backgroundColor: colorSecondry,
      appBar: AppBar(
        backgroundColor: colorSecondry,
        title: CustomTextWidget(
          text: widget.user.name!.split(' ').take(2).join(' '),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorBlack,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          CustomTextWidget(
            text: widget.user.name!,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colorBlack,
          ),
          const SizedBox(height: 10),
          CustomTextWidget(
            text: widget.user.bio!,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: colorBlack,
          ),
          const SizedBox(height: 10),
          CustomTextWidget(
            text: widget.user.email!,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: colorBlack,
          ),
        ],
      ),
    );
  }
}
