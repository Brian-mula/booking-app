import 'package:dashboard/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:dotted_line/dotted_line.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            // !top navigation
            Container(
              height: 110,
              color: Colors.blue.shade700,
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  BigTextWidget(
                    text: "Tickets",
                    color: Colors.white,
                    size: 18,
                  ),
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            //!date picker
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.blueGrey.shade400,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                  ),
                ],
              ),
            ),
            //  !ticket details
            Container(
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
                      text: "Royal Rift",
                      color: Colors.blue.shade700,
                      size: 20,
                    ),
                    subtitle: BigTextWidget(
                      text: "Executive(A)",
                      size: 16,
                      color: Colors.black38,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigTextWidget(
                          text: "Ksh. 1000",
                          size: 17,
                          color: Colors.blue.shade600,
                        ),
                        BigTextWidget(
                          text: "8 seats left",
                          color: Colors.pink.shade600,
                          size: 16,
                        )
                      ],
                    ),
                  ),
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
            ),
            // !second ticket
            Container(
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
                      text: "Royal Rift",
                      color: Colors.blue.shade700,
                      size: 20,
                    ),
                    subtitle: BigTextWidget(
                      text: "Executive(A)",
                      size: 16,
                      color: Colors.black38,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigTextWidget(
                          text: "Ksh. 1000",
                          size: 17,
                          color: Colors.blue.shade600,
                        ),
                        BigTextWidget(
                          text: "8 seats left",
                          color: Colors.pink.shade600,
                          size: 16,
                        )
                      ],
                    ),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
