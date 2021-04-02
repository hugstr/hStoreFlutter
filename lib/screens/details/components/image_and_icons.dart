import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hstore_flutter/constants.dart';
import 'package:hstore_flutter/screens/details/components/icon_card.dart';

class ImageAndIconCards extends StatelessWidget {
  const ImageAndIconCards({
    Key key,
    @required this.size,
    this.detailImage,
  }) : super(key: key);

  final Size size;
  final String detailImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 1.5),
      child: SizedBox(
        height: size.height * 0.80,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      icon: "assets/icons/heart-icon.svg",
                      iconColor: kPrimaryColor.withOpacity(0.85),
                    ),
                    IconCard(
                      icon: "assets/icons/g-clef.svg",
                      iconColor: kBackgroundColor,
                      picColor: kPrimaryColor,
                    ),
                    IconCard(
                        icon: "assets/icons/map-icon.svg",
                        iconColor: kBackgroundColor,
                        picColor: kPrimaryColor),
                    IconCard(
                        icon: "assets/icons/share-icon.svg",
                        iconColor: kBackgroundColor,
                        picColor: kPrimaryColor),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.50),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sanshin.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
