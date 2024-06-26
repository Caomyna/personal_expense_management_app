import 'package:expense_management_app/Widget/bottom_sheet.dart';
import 'home_screen.dart';
import 'package:expense_management_app/utils/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddInconme extends StatefulWidget {
  const AddInconme({super.key});

  @override
  State<AddInconme> createState() => _AddInconmeState();
}

class _AddInconmeState extends State<AddInconme> {
  String selectedItem = 'Income';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        backgroundColor: selectedItem == 'Income'
            ? Color.fromARGB(255, 10, 135, 15)
            : Color.fromARGB(255, 155, 10, 10),
        title: Center(
          child: DropdownButtonFormField<String>(
            dropdownColor: Color.fromARGB(255, 98, 98, 98),
            value: 'Income',
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(35),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: selectedItem == 'Income'
                  ? Color.fromARGB(255, 10, 135, 15)
                  : Color.fromARGB(255, 155, 10, 10),
            ),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                value: 'Income',
                child: Text(
                  'Income',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              DropdownMenuItem(
                value: 'Expenses',
                child: Text(
                  'Expenses',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedItem = value!;
              });
            },
            onSaved: (value) {},
          ),
        ),
        actions: [
          Container(
            width: 60,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: selectedItem == 'Income'
                  ? Color.fromARGB(255, 10, 135, 15)
                  : Color.fromARGB(255, 155, 10, 10),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  // height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How much?",
                        style: TextStyle(color: AppColors.textColor),
                      ),
                      const Text(
                        "\$0",
                        style: TextStyle(color: Colors.white, fontSize: 48),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                decoration: const BoxDecoration(
                                  //top border radius
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                // height: 800,
                                // color: Colors.white,
                                child: Center(
                                  child: Column(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    // mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 20, bottom: 20),
                                        child: Text(
                                          'Category List',
                                          style: TextStyle(
                                            color: AppColors.mainBlackColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.purple[50]),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 40, right: 40),
                                                child: Text('Expense'),
                                              )),
                                          const SizedBox(width: 20),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 40, right: 40),
                                                child: Text('Income'),
                                              )),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 40),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFFCEED3),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                  ),
                                                ),
                                                child: const Icon(
                                                  Icons.shopping_cart_sharp,
                                                  color: Color.fromARGB(
                                                      255, 131, 90, 9),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text("Shopping",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .mainBlackColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.edit),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 40),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: ShapeDecoration(
                                                  color: Colors.red[50],
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                  ),
                                                ),
                                                child: const Icon(
                                                  Icons.food_bank,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text("Food",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .mainBlackColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.edit),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 40),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: ShapeDecoration(
                                                  color: Colors.blue[50],
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                  ),
                                                ),
                                                child: const Icon(
                                                  Icons.directions_car,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text("Transportation",
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .mainBlackColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.edit),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          //
                                        },
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                            const EdgeInsets.symmetric(
                                                horizontal: 100, vertical: 10),
                                          ),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 0, right: 0),
                                            child: Text(
                                              "Add Category",
                                              style: TextStyle(
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 35,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(color: AppColors.textColor),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.keyboard_arrow_down),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color.fromARGB(255, 249, 245, 245)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Description',
                                  hintStyle:
                                      TextStyle(color: AppColors.textColor),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                // Add any additional TextField properties as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tuesday, 12 May 2021",
                              style: TextStyle(color: AppColors.textColor),
                            ),
                            // const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.attach_file_sharp),
                          ),
                          Text(
                            "Add attachment",
                            style: TextStyle(color: AppColors.textColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          selectedItem == 'Income'
                              ? Color.fromARGB(255, 10, 135, 15)
                              : Color.fromARGB(255, 155, 10, 10),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 10),
                        ),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.only(left: 60, right: 60),
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            // ),
          ),
        ],
      ),
    );
  }
}
