import 'package:flutter/material.dart';
import 'package:food_delivery_app/resources/Images.dart';
import 'package:food_delivery_app/resources/Strings.dart';
import 'package:food_delivery_app/resources/alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> images1 = [
    Images.graphic1,
    Images.graphic2,
    Images.graphic3,
  ];

  final List<String> images2 = [
    Images.foodItem1,
    Images.foodItem2,
    Images.foodItem3,
    Images.foodItem4,
    Images.foodItem5,
    Images.foodItem6,
    Images.foodItem7,
  ];

  final List<String> images3 = [
    Images.foodItem8,
    Images.foodItem9,
    Images.foodItem10,
    Images.foodItem11,
    Images.foodItem12,
    Images.foodItem13,
    Images.foodItem1,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 70,
              color: Colors.white,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Images.profileImage),
                      radius: 25,
                    )
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 110, top: 14),
                        child: Text(Strings.heyTokemi, style: const TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 40.0),
                        child: Text(Strings.readyTo, style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                      onTapDown: (TapDownDetails details) {
                        _showPopupMenu(context, details.globalPosition);
                      },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Image.asset(Images.menuIcon, height: 30, width: 30,),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 17, 7, 17),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      height: 50,
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black26,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                          hintText: 'Search your cravings',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 17, 10, 17),
                    child: GestureDetector(
                      onTap: () {
                        Dialogs.showAlertDialog(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 50,
                        width: 50,
                        child: const Icon(Icons.add_road, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14))
                      ),
                      child: Center(
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images1.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                height: 150,
                                width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                    image: DecorationImage(image: AssetImage(images1[index]), fit: BoxFit.fill)
                                  ),
                              ),
                            );
                          },
                          onPageChanged: (int index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(images1.length, (index) {
                        return Container(
                          width: 7.0,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedIndex == index ? Colors.orange : Colors.grey,
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            Strings.selectByCategory,
                            style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 120,
                      width: double.infinity,
                      color: Colors.white,
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images2.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 120,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(14)),
                                    image: DecorationImage(image: AssetImage(images2[index]), fit: BoxFit.fill)
                                ),
                                //child: Image.asset(images2[index], fit: BoxFit.fill),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            Strings.popularMenu,
                            style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            children: [
                              ...(images3).map((pickedFileList) {
                                return Padding(padding: const EdgeInsets.only(bottom: 10, right: 10, left: 5, top: 5),
                                  child: _buildImageItem(
                                      imageFile: pickedFileList),
                                );
                              }).toList()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImageItem({required String imageFile}) => Container(
    height: 170,
    width: 160,
    padding: const EdgeInsets.only(left: 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: 90,
        width: 90,
        child: Image.asset(
          imageFile,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );

  void _showPopupMenu(BuildContext context, Offset position) async {
    final RenderBox overlay = Overlay.of(context)?.context.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromPoints(position, position.translate(0.0, 0.0)),
        Offset.zero & overlay.size,
      ),
      items: [
        const PopupMenuItem(
          child: Text('New group'),
        ),
        const PopupMenuItem(
          child: Text('Starred messages'),
        ),
        const PopupMenuItem(
          child: Text('Linked device'),
        ),
        const PopupMenuItem(
          child: Text('New broadcast'),
        ),
        const PopupMenuItem(
          child: Text('Setting'),
        ),
      ],
    );
  }
}



