import '../imports.dart';

class CustomSearchProfile extends StatelessWidget {
  const CustomSearchProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?t=st=1719719974~exp=1719723574~hmac=b0c5941c748607ea6ed8fea4c1fbfd0a65f1bb3d2d0e6bb0f46883030976cca5&w=500'),
        ),
        CustomTextFormField(
          title: "Search",
          preIcon: Icon(Icons.search, color: colorGray, size: 20),
        ),
      ],
    );
  }
}
