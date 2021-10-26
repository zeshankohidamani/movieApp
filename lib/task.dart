import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class TaskClass extends StatefulWidget {
  const TaskClass({Key? key}) : super(key: key);

  @override
  _TaskClassState createState() => _TaskClassState();
}

class _TaskClassState extends State<TaskClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Earning & Orders",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TopBody(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Moneyback",
                  style: kHeadingTextStyle,
                ),
                Text(
                  "Rewards",
                  style: kHeadingTextStyle,
                ),
                Text(
                  "Referral",
                  style: kHeadingTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      "Purchased ID",
                      style: kSmallHeadinTextStyle,
                    ),
                  ),
                  Text(
                    "Date",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Points",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Status",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Claim",
                    style: kSmallHeadinTextStyle,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "012345678",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "18/May/2021",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "10",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Pending",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "",
                    style: kSmallHeadinTextStyle,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      "Purchased ID",
                      style: kSmallHeadinTextStyle,
                    ),
                  ),
                  Text(
                    "Date",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Points",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Status",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Claim",
                    style: kSmallHeadinTextStyle,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      "Purchased ID",
                      style: kSmallHeadinTextStyle,
                    ),
                  ),
                  Text(
                    "Date",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Points",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Status",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Claim",
                    style: kSmallHeadinTextStyle,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      "Purchased ID",
                      style: kSmallHeadinTextStyle,
                    ),
                  ),
                  Text(
                    "Date",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Points",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Status",
                    style: kSmallHeadinTextStyle,
                  ),
                  Text(
                    "Claim",
                    style: kSmallHeadinTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopBody extends StatelessWidget {
  const TopBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
              DataSet(
                title: "\$115.12",
                detail: "Text",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataSet extends StatelessWidget {
  DataSet({required this.title, required this.detail});

  final String title, detail;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            detail,
            style: TextStyle(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
