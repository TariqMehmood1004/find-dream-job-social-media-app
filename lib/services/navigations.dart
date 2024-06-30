import '../imports.dart';

class Navigation {
  static void push(BuildContext context, Widget widget) {
    Get.to(widget,
        transition: Transition.rightToLeft, duration: 250.milliseconds);
  }

  static void replace(BuildContext context, Widget widget) {
    Get.off(widget,
        transition: Transition.rightToLeft, duration: 250.milliseconds);
  }

  static void replaceAll(BuildContext context, Widget widget) {
    Get.offAll(widget,
        transition: Transition.rightToLeft, duration: 250.milliseconds);
  }

  static void pop(BuildContext context) {
    Get.back();
  }
}
