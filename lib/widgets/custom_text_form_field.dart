import '../imports.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    required this.preIcon,
  });

  final String title;
  final Widget preIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0,
        color: colorSecondry,
        shape: StadiumBorder(),
        child: TextFormField(
          style: TextStyle(color: colorBlack),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            hintStyle: GoogleFonts.roboto(
              color: colorGray,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
              height: 1.5,
              letterSpacing: 0.5,
            ).copyWith(
              fontFamily: 'Arial',
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            prefixIcon: preIcon,
          ),
        ),
      ),
    );
  }
}
