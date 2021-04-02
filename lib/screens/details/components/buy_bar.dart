import 'package:flutter/material.dart';
import 'package:hstore_flutter/constants.dart';

class BuyBar extends StatelessWidget {
  const BuyBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 60,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            ),
            onPressed: () {},
            child: Text(
              "Comprar",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(kBackgroundColor),
              ),
              onPressed: () {},
              child: Text(
                "Descrição",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }
}
