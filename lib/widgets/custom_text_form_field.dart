import '../imports.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.preIcon,
    this.postIcon,
    this.cardBackgroundColor,
    this.textColor,
    this.textAlign,
    this.controller,
    this.obscureText,
  });

  final String title;
  final Widget? preIcon;
  final Widget? postIcon;
  final Color? cardBackgroundColor;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextEditingController? controller;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0,
        color: cardBackgroundColor ?? colorSecondry,
        shape: StadiumBorder(),
        child: TextFormField(
          controller: controller,
          textAlign: textAlign ?? TextAlign.center,
          style: TextStyle(color: textColor ?? colorBlack),
          obscureText: obscureText ?? false,
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          minLines: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            hintStyle: GoogleFonts.roboto(
              color: textColor ?? colorGray,
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
            suffixIcon: postIcon,
          ),
        ),
      ),
    );
  }
}
