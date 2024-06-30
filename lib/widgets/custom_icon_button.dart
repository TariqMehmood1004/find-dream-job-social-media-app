import '../imports.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.icon,
    this.backgroundColor,
    this.onPressed,
  });

  final Widget? icon;
  final Color? backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor ?? colorBlackLight,
      ),
      icon: icon ?? const Icon(Icons.camera, color: colorPrimary, size: 20),
    );
  }
}
