import 'package:dashboard/widgets/big_text_widget.dart';
import 'package:dashboard/widgets/customCardText.dart';
import 'package:dashboard/widgets/custome_card.dart';
import 'package:dashboard/widgets/dropDownWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
            height: 170,
            color: Colors.blue.shade700,
            child: Column(
              children: [
                // !top navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu_outlined,
                          color: Colors.white,
                        )),
                    const Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.person))
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _customeRows("2", "My Tickets", Icons.receipt_outlined),
                      const VerticalDivider(
                        width: 3,
                        color: Colors.black38,
                        indent: 3,
                      ),
                      _customeRows("10", "My Points", Icons.star)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: double.maxFinite,
            color: Colors.white,
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.only(top: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "From: ",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ),
                        DropdownWidget(),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 3,
                    color: Colors.black38,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "To: ",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                        ),
                        DropdownWidget(),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink.shade500),
                    child: const Center(
                        child: Text(
                      "Search",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
                  )
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigTextWidget(text: "Recent Activity"),
                const Icon(Icons.more_vert_outlined),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(
                  left: 10, top: 20, right: 10, bottom: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              child: const CustomeCard()),
          Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(
                  left: 10, top: 20, right: 10, bottom: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: const CustomCardText())
        ],
      ),
    );
  }

  Container _customeRows(String numb, String title, IconData icon) {
    return Container(
      padding: EdgeInsets.only(left: 14),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              icon,
              color: Colors.pink.shade900,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  numb,
                  style: TextStyle(fontSize: 20, color: Colors.pink.shade600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
