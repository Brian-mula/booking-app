import 'package:dashboard/widgets/big_text_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CustomCardText extends StatelessWidget {
  const CustomCardText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pink.shade500,
                    borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.money,
                  color: Colors.white,
                ),
              ),
              title: BigTextWidget(
                text: "Ticket code",
                color: Colors.blue.shade700,
                size: 20,
              ),
              subtitle: BigTextWidget(
                text: "FDAY345",
                size: 16,
                color: Colors.black38,
              ),
              trailing: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade500,
                ),
                child: BigTextWidget(
                  text: "Completed",
                  size: 18,
                  color: Colors.blueGrey.shade700,
                ),
              )),
          const DottedLine(
            dashColor: Colors.black12,
          ),
          // !second card section
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigTextWidget(
                        text: "Nairobi",
                        color: Colors.black26,
                        size: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_clock,
                            color: Colors.blue.shade500,
                          ),
                          BigTextWidget(
                            text: "1300hrs",
                            color: Colors.blue.shade500,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black26,
                      ),
                      BigTextWidget(
                        text: "3hrs 30m",
                        color: Colors.black26,
                        size: 16,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      BigTextWidget(
                        text: "Bungoma",
                        color: Colors.black26,
                        size: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.lock_clock,
                            color: Colors.blue.shade500,
                          ),
                          BigTextWidget(
                            text: "1300hrs",
                            color: Colors.blue.shade500,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
