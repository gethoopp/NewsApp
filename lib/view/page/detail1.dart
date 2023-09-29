import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/model/bloc/bloc/api_bloc.dart';

import 'errorpage.dart';

class DetailPage1 extends StatelessWidget {
  const DetailPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Hero(
        tag: 'car5',
        child: BlocBuilder<ApiBloc, newsState>(builder: (context, state) {
          if (state is ApiInitial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is newsModelload) {
            final articlemode = state.articleModel;
            return Scaffold(
              body: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'Assets/images/car5.png',
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 1.5,
                              fit: BoxFit.cover,
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 350),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 1,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: ListView(children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 100, left: 20, right: 20),
                                        child: Text.rich(
                                          TextSpan(
                                            text:
                                                ' a watershed moment for the automotive industry, 2023 has emerged as a pivotal year for the electric vehicle (EV) market. Over the past several months, nearly every major automaker has announced plans to electrify its vehicle lineup by 2023.   ',
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 66, 56, 56),
                                                wordSpacing: 2.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20, right: 20),
                                        child: Text.rich(
                                          TextSpan(
                                            text:
                                                ' With a 50% surge in sales compared to the previous year, as reported by the Automotive Manufacturers Association, the electric vehicle sector is on an unprecedented growth trajectory. This surge underscores both the increasing environmental consciousness of consumers and the concerted efforts of governments and manufacturers to combat carbon emissions in the transportation sector. Leading the charge is Tesla, the trailblazer in electric vehicle technology. The company reported a staggering 60% increase in deliveries in the first quarter of 2023 compared to the same period in the preceding year. This meteoric rise in demand can be attributed to a confluence of factors, including heightened environmental awareness, generous government incentives, and substantial improvements in charging infrastructure. As charging stations become more ubiquitous and efficient, range anxiety is becoming an increasingly negligible concern for potential buyers. One of the driving forces behind this surge is the remarkable progress in battery technology. The latest generation of electric vehicles boasts significantly extended ranges and faster charging times, effectively addressing one of the primary apprehensions potential buyers once held. Breakthroughs in solid-state battery technology, heralded as the next frontier in EV innovation, promise even greater strides in the near future. Experts and industry insiders are unanimous in their belief that this upward trajectory is poised to continue. Major automakers, including Nissan and Chevrolet, are making substantial investments in the development of electric vehicles, signaling a broader industry shift towards sustainability. Furthermore, governments worldwide are enacting stringent emissions regulations, providing further impetus for the adoption of electric vehicles. The ramifications of this seismic shift are far-reaching. Not only does it signify a major step forward in the global fight against climate change, but it also marks a transformative moment in the history of transportation. As the electric vehicle revolution gains momentum, the days of fossil-fuel dominance are gradually waning. The transition to electric vehicles is not just a trend; it\'s a paradigm shift that is reshaping the automotive landscape for generations to come. ',
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 66, 56, 56),
                                                wordSpacing: 2.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20, right: 20),
                                        child: Text.rich(
                                          TextSpan(
                                            text:
                                                ' This meteoric rise in demand can be attributed to a confluence of factors, including heightened environmental awareness, generous government incentives, and substantial improvements in charging infrastructure. As charging stations become more ubiquitous and efficient, range anxiety is becoming an increasingly negligible concern for potential buyers. One of the driving forces behind this surge is the remarkable progress in battery technology. The latest generation of electric vehicles boasts significantly extended ranges and faster charging times, effectively addressing one of the primary apprehensions potential buyers once held. Breakthroughs in solid-state battery technology, heralded as the next frontier in EV innovation, promise even greater strides in the near future. Experts and industry insiders are unanimous in their belief that this upward trajectory is poised to continue. Major automakers, including Nissan and Chevrolet, are making substantial investments in the development of electric vehicles, signaling a broader industry shift towards sustainability. Furthermore, governments worldwide are enacting stringent emissions regulations, providing further impetus for the adoption of electric vehicles. The ramifications of this seismic shift are far-reaching. Not only does it signify a major step forward in the global fight against climate change, but it also marks a transformative moment in the history of transportation. As the electric vehicle revolution gains momentum, the days of fossil-fuel dominance are gradually waning. The transition to electric vehicles is not just a trend; it\'s a paradigm shift that is reshaping the automotive landscape for generations to come.',
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 66, 56, 56),
                                                wordSpacing: 2.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20, right: 20),
                                        child: Text.rich(
                                          TextSpan(
                                            text: '  ',
                                            style: GoogleFonts.nunito(
                                                color: const Color.fromARGB(
                                                    255, 66, 56, 56),
                                                wordSpacing: 2.5,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ])),
                            Container(
                              margin: const EdgeInsets.only(top: 300, left: 50),
                              width: 250,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 78, 73, 73),
                                backgroundBlendMode: BlendMode.darken,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: articlemode[0].author!.isEmpty
                                      ? const Text('No Author')
                                      : Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Text(
                                            articlemode[0].author!,
                                            style: GoogleFonts.nunito(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                  subtitle: Text(
                                    articlemode[0].title,
                                    style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ]),
            );
          } else if (state is errorLoad) {
            return Center(child: erroPage());
          } else {
            return Center(
              child: erroPage(),
            );
          }
        }),
      ),
    );
  }
}
