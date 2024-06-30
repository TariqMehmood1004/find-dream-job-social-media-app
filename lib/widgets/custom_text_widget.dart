import '../imports.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.isItalic,
    this.fontFamily,
    this.color,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? isItalic;
  final String? fontFamily;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color ?? colorBlackLight,
        fontSize: fontSize ?? Get.width * 0.035,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontStyle: isItalic ?? FontStyle.normal,
        decoration: TextDecoration.none,
        height: 1.5,
        letterSpacing: 0.5,
      ).copyWith(fontFamily: fontFamily ?? 'Poppins'),
    );
  }
}
