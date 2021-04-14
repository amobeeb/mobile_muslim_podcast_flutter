
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;
  // PageTitle({Key key, title}) : super(key: key);
  PageTitle(this.title);
  @override
  Widget build(BuildContext context) {
    var kSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: kSize.width * 0.4,
            child:
                Text('$title', style: Theme.of(context).textTheme.headline1)),
      ],
    );
  }
}
