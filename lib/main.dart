import 'package:flutter/material.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

enum Berth {
  lower,
  middle,
  upper,
  sideUpper,
  sideLower,
}

extension BerthText on Berth {
  String getText() {
    switch (this) {
      case Berth.lower:
        return 'LOWER';
      case Berth.middle:
        return 'MIDDLE';
      case Berth.upper:
        return 'UPPER';
      case Berth.sideLower:
        return 'SIDE LOWER';
      case Berth.sideUpper:
        return 'SIDE UPPER';
      default:
        return "";
    }
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: size.height * 0.18,
          leadingWidth: double.maxFinite,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.03),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "Seat Finder",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: 20),
                          onTapOutside: (event) =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                          controller: searchController,
                          decoration: InputDecoration(
                            hintText: "Enter Seat Number...",
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            hintStyle: TextStyle(
                                color: Colors.blue.shade200,
                                fontWeight: FontWeight.bold),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                              disabledBackgroundColor: Colors.grey,
                              fixedSize: const Size.fromHeight(60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text('Find'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [1, 2, 3],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 7,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [4, 5, 6],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 8,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [9, 10, 11],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 15,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [12, 13, 14],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 16,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [17, 18, 19],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 23,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [20, 21, 22],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 24,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [25, 26, 27],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 31,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [28, 29, 30],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 32,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [33, 34, 35],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 39,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [36, 37, 38],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 40,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [41, 42, 43],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 47,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [44, 45, 46],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 48,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [49, 50, 51],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 55,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [52, 53, 54],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 56,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [57, 58, 59],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 63,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [60, 61, 62],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 64,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: false,
                        values: const [65, 66, 67],
                      ),
                      SingleBlock(
                        topPosition: false,
                        berth: Berth.sideLower,
                        value: 71,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TripleBlocks(
                        searchText: searchController.text,
                        topPosition: true,
                        values: const [68, 69, 70],
                      ),
                      SingleBlock(
                        topPosition: true,
                        berth: Berth.sideUpper,
                        value: 72,
                        searchText: searchController.text,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TripleBlocks extends StatelessWidget {
  final String searchText;
  final bool topPosition;
  final List<int> values;
  const TripleBlocks(
      {super.key,
      required this.searchText,
      required this.topPosition,
      required this.values});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: topPosition ? 0 : null,
          top: topPosition ? null : 0,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 1),
            width: 207,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 115, 190, 252),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              CustomContainer(
                topPosition: topPosition,
                berth: Berth.lower,
                value: values[0],
                searchText: searchText,
              ),
              const SizedBox(width: 1),
              CustomContainer(
                topPosition: topPosition,
                berth: Berth.middle,
                value: values[1],
                searchText: searchText,
              ),
              const SizedBox(width: 1),
              CustomContainer(
                topPosition: topPosition,
                berth: Berth.upper,
                value: values[2],
                searchText: searchText,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SingleBlock extends StatelessWidget {
  final String searchText;
  final int value;
  final Berth berth;
  final bool topPosition;
  const SingleBlock(
      {super.key,
      required this.topPosition,
      required this.value,
      required this.berth,
      required this.searchText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: topPosition ? 0 : null,
          top: topPosition ? null : 0,
          child: Container(
            width: 79,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 115, 190, 252),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomContainer(
            searchText: searchText,
            value: value,
            berth: berth,
            topPosition: topPosition,
          ),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String searchText;
  final int value;
  final Berth berth;
  final bool topPosition;
  const CustomContainer(
      {super.key,
      required this.searchText,
      required this.value,
      required this.berth,
      required this.topPosition});

  @override
  Widget build(BuildContext context) {
    final isSelected = searchText == value.toString();
    return Container(
      height: 63,
      width: 63,
      margin: const EdgeInsets.symmetric(vertical: 1),
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color:
            isSelected ? Colors.blue : const Color.fromARGB(255, 206, 230, 249),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              value.toString(),
              style: TextStyle(
                fontSize: 25,
                color: isSelected ? Colors.white : Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment:
                topPosition ? Alignment.topCenter : Alignment.bottomCenter,
            child: Text(
              berth.getText(),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.blue,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
