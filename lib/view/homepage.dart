import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/model/api/data.dart';
import 'package:newsapp/model/bloc/bloc/api_bloc.dart';
import 'package:newsapp/view/Button/searcbar.dart';
import 'package:shimmer/shimmer.dart';

//page import

import 'page/errorpage.dart';

// ignore: non_constant_identifier_names
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabs;
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Expanded(
                child: BlocBuilder<ApiBloc, newsState>(
                  builder: (context, state) {
                    if (state is ApiInitial) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 280,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "Assets/images/car2.png"),
                                      )),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 100, left: 10, right: 10),
                                    child: ListTile(
                                      title: Text(
                                        'Loading',
                                        style: GoogleFonts.nunito(
                                            color: const Color.fromARGB(
                                                255, 255, 0, 0),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10),
                                      ),
                                      subtitle: Text(
                                        'Loading',
                                        style: GoogleFonts.nunito(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    } else if (state is newsModelload) {
                      final articlemodel = state.articleModel;
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          searchBar((fn) {
                            setState(() {
                              isloading = !isloading;
                            });
                          }),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Latest News",
                                    style: GoogleFonts.nunito(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  )),
                              const SizedBox(
                                width: 100,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('ditekan');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 1),
                                  child: Text(
                                    'See All',
                                    style: GoogleFonts.nunito(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 280,
                                      height: 250,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "Assets/images/car2.png"),
                                          )),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 100, left: 10, right: 10),
                                        child: ListTile(
                                          title: Text(
                                            articlemodel[1].author!,
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 255, 0, 0),
                                                fontWeight: FontWeight.w800,
                                                fontSize: 10),
                                          ),
                                          subtitle: Text(
                                            articlemodel[1].title,
                                            style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                        width: 280,
                                        height: 250,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "Assets/images/car1.png"),
                                            )),
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              top: 100, left: 10, right: 10),
                                          child: ListTile(
                                            title: Text(
                                              articlemodel[2].author!,
                                              style: GoogleFonts.nunito(
                                                  color: const Color.fromARGB(
                                                      255, 255, 0, 0),
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 10),
                                            ),
                                            subtitle: Text(
                                              articlemodel[2].title,
                                              style: GoogleFonts.nunito(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: 280,
                                      height: 250,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "Assets/images/car3.png"),
                                          )),
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            top: 100, left: 10, right: 10),
                                        child: ListTile(
                                          title: Text(
                                            articlemodel[3].author!,
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 255, 0, 0),
                                                fontWeight: FontWeight.w800,
                                                fontSize: 10),
                                          ),
                                          subtitle: Text(
                                            articlemodel[3].title,
                                            style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 280,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "Assets/images/car4.png"),
                                              )),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 100, left: 10, right: 10),
                                            child: ListTile(
                                              title: Text(
                                                articlemodel[4].author!,
                                                style: GoogleFonts.nunito(
                                                    color: const Color.fromARGB(
                                                        255, 255, 0, 0),
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 10),
                                              ),
                                              subtitle: Text(
                                                articlemodel[4].title,
                                                style: GoogleFonts.nunito(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Hero(
                                  tag: 'car5',
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.toNamed('/DetailPage1');
                                    },
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 280,
                                          height: 250,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "Assets/images/car5.png"),
                                              )),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 100, left: 10, right: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: ListTile(
                                                title: Text(
                                                  articlemodel[5].author!,
                                                  style: GoogleFonts.nunito(
                                                      color: const Color.fromARGB(
                                                          255, 255, 0, 0),
                                                      fontWeight: FontWeight.w800,
                                                      fontSize: 10),
                                                ),
                                                subtitle: Text(
                                                  articlemodel[5].title,
                                                  style: GoogleFonts.nunito(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w800,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: TabBar(
                                indicatorColor: Colors.redAccent,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.redAccent,
                                ),
                                isScrollable: true,
                                controller: _tabs,
                                tabs: [
                                  Text('Technology',
                                      style: GoogleFonts.nunito(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15)),
                                  Text('Business',
                                      style: GoogleFonts.nunito(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15)),
                                  Text('Health',
                                      style: GoogleFonts.nunito(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15)),
                                  Text('Science',
                                      style: GoogleFonts.nunito(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15)),
                                ]),
                          ),
                          detailVal(articlemodel: articlemodel),
                        ],
                      );
                    } else if (state is errorLoad) {
                      return Center(child: erroPage());
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class detailVal extends StatelessWidget {
  const detailVal({
    super.key,
    required this.articlemodel,
  });

  final List<Article> articlemodel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "Assets/images/car2.png"),
                    )),
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 50, left: 10, right: 10),
                  child: ListTile(
                    title: Text(
                      articlemodel[1].author!,
                      style: GoogleFonts.nunito(
                          color: const Color.fromARGB(
                              255, 255, 0, 0),
                          fontWeight: FontWeight.w800,
                          fontSize: 10),
                    ),
                    subtitle: Text(
                      articlemodel[1].title,
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "Assets/images/car1.png"),
                      )),
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 50, left: 10, right: 10),
                    child: ListTile(
                      title: Text(
                        articlemodel[5].author!,
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(
                                255, 255, 0, 0),
                            fontWeight: FontWeight.w800,
                            fontSize: 10),
                      ),
                      subtitle: Text(
                        articlemodel[5].title,
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 15),
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "Assets/images/car3.png"),
                    )),
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 50, left: 10, right: 10),
                  child: ListTile(
                    title: Text(
                      articlemodel[4].author!,
                      style: GoogleFonts.nunito(
                          color: const Color.fromARGB(
                              255, 255, 0, 0),
                          fontWeight: FontWeight.w800,
                          fontSize: 10),
                    ),
                    subtitle: Text(
                      articlemodel[4].title,
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 380,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "Assets/images/car4.png"),
                        )),
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 50, left: 10, right: 10),
                      child: ListTile(
                        title: Text(
                          articlemodel[2].author!,
                          style: GoogleFonts.nunito(
                              color: const Color.fromARGB(
                                  255, 255, 0, 0),
                              fontWeight: FontWeight.w800,
                              fontSize: 10),
                        ),
                        subtitle: Text(
                          articlemodel[2].title,
                          style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Hero(
            tag: 'car4',
            child: Stack(
              children: [
                Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "Assets/images/car5.png"),
                      )),
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 50, left: 10, right: 10),
                    child: ListTile(
                      title: Text(
                        articlemodel[1].author!,
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(
                                255, 255, 0, 0),
                            fontWeight: FontWeight.w800,
                            fontSize: 10),
                      ),
                      subtitle: Text(
                        articlemodel[1].title,
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
