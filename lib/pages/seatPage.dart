import 'package:dashboard/widgets/big_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    void changeIndex(int index) {
      selectedIndex = index;
      print("am tapped");
    }

    return Scaffold(
      body: Container(
        color: Colors.blueGrey.shade50,
        child: Column(
          children: [
            // ! navigation section
            Container(
              color: Colors.blue.shade700,
              height: 110,
              padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  BigTextWidget(
                    text: "Select Seat",
                    color: Colors.white,
                    size: 20,
                  ),
                  const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            // !time notification
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigTextWidget(
                    text: "Remaining order Time",
                    size: 18,
                    color: Colors.blueGrey.shade800,
                  ),
                  BigTextWidget(
                    text: "00:04:01",
                    color: Colors.pink.shade600,
                    size: 18,
                  )
                ],
              ),
            ),
            // !seat arrangement section
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              margin: const EdgeInsets.only(top: 10),
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        print(index);
                        selectedIndex = index;
                        changeIndex(index);
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BigTextWidget(
                                  text: "Exe",
                                  size: 20,
                                  color: selectedIndex == index
                                      ? Colors.pink.shade500
                                      : Colors.black26,
                                ),
                                BigTextWidget(
                                  text: "1",
                                  size: 20,
                                  color: selectedIndex == index
                                      ? Colors.pink.shade500
                                      : Colors.black26,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // !lables section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      labelRows(
                          Colors.pink.shade600,
                          BigTextWidget(
                            text: "Selected",
                            size: 12,
                            color: Colors.blueGrey.shade600,
                          )),
                      labelRows(
                          Colors.blue.shade600,
                          BigTextWidget(
                            text: "Booked",
                            size: 12,
                            color: Colors.blue.shade600,
                          )),
                      labelRows(
                          Colors.blueGrey.shade300,
                          BigTextWidget(
                            text: "Available",
                            size: 12,
                            color: Colors.blueGrey.shade600,
                          ))
                    ],
                  ),
                  // !row arrangement section
                  Container(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        arrangementLabels(BigTextWidget(
                          text: "A",
                        )),
                        arrangementLabels(BigTextWidget(text: "B")),
                        const SizedBox(
                          width: 20,
                        ),
                        arrangementLabels(BigTextWidget(text: "C")),
                        arrangementLabels(BigTextWidget(text: "D"))
                      ],
                    ),
                  ),
                  //  !arrangement section
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade600,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade800,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pink.shade600),
                    child: Center(
                        child: BigTextWidget(
                      text: "Continue",
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column arrangementLabels(BigTextWidget bigTextWidget) {
    return Column(
      children: [
        bigTextWidget,
        Container(
          height: 2,
          width: 20,
          color: Colors.grey,
        )
      ],
    );
  }

  Row labelRows(
    Color color,
    BigTextWidget bigTextWidget,
  ) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3), color: color),
        ),
        const SizedBox(
          width: 5,
        ),
        bigTextWidget
      ],
    );
  }
}
