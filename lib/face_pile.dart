library face_pile;

import 'package:flutter/material.dart';

/// [FacePile] displays a stacked list of users.
/// Each circle represents a person and contains their image.
/// This widget is usually used when sharing who has access to a specific
/// view or file, or when assigning tasks to someone in a workflow.
class FacePile extends StatelessWidget {
  const FacePile({
    Key? key,
    required this.images,
    required this.radius,
    required this.space,
    this.child,
    this.backgroundColor,
    this.childBackgroundColor,
  }) : super(key: key);

  /// List of user profile image.
  final List<ImageProvider<Object>> images;

  /// Radius of [CircleAvatar].
  final double radius;

  /// determine the space between each [CircleAvatar].
  final double space;

  /// Widget to show in circle avatar in last order.
  final Widget? child;

  /// [CircleAvatar] background color.
  final Color? backgroundColor;

  /// [CircleAvatar] background color for child.
  final Color? childBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final faceLength = images.length;

    final hasChild = child != null ? 1 : 0;
    final facePileWidth = space * (faceLength + hasChild) + radius * 2 - space;

    return SizedBox(
      width: facePileWidth,
      child: Stack(
        children: [
          SizedBox(
            width: radius * 2,
            height: radius * 2,
          ),
          if (child != null)
            Positioned(
              left: space * faceLength,
              child: CircleAvatar(
                radius: radius,
                backgroundColor: childBackgroundColor ?? backgroundColor,
                child: child!,
              ),
            ),
          ...List.generate(
            faceLength,
            (index) {
              final newIndex = faceLength - index - 1;
              final image = images[newIndex];

              final avatar = CircleAvatar(
                radius: radius,
                backgroundImage: image,
                backgroundColor: backgroundColor,
              );

              return Positioned(
                left: space * newIndex,
                child: avatar,
              );
            },
          ),
        ],
      ),
    );
  }
}
