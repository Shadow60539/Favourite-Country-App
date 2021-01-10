import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/core/colors/colors.dart';
import 'package:music_app/core/model/country.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:music_app/presentation/bloc/country/country_bloc.dart';
import 'package:music_app/presentation/bloc/liked/liked_bloc.dart';
import 'package:music_app/presentation/widgets/fade_animation.dart';
import 'package:music_app/presentation/widgets/offline_widget.dart';
import 'package:music_app/presentation/widgets/server_error_widget.dart';
import 'package:provider/provider.dart';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  final GlobalKey<AnimatedListState> _trendinsListKey =
      GlobalKey<AnimatedListState>();
  final GlobalKey<AnimatedListState> _likedListKey =
      GlobalKey<AnimatedListState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Country> _allCountries = <Country>[];

  Color scaffoldColor = kAfrica;

  // ScrollController _scrollController;

  @override
  void initState() {
    // _scrollController = ScrollController()
    //   ..addListener(() {
    //     if (_scrollController.position.atEdge) {
    //       if (_scrollController.position.pixels == 0) {
    //         // You're at the top.
    //       } else {
    //         print("Bottom");
    //         // You're at the bottom.
    //       }
    //     }
    //   });

    BlocProvider.of<LikedBloc>(context)
        .add(const LikedEvent.fetchAllLikedCountries());
    super.initState();
  }

  String _welcomeText() {
    final int _currentHour = DateTime.now().hour;
    if (_currentHour >= 12 && _currentHour < 18) {
      return "Afternoon";
    } else if (_currentHour >= 18 && _currentHour < 6) {
      return "Evening";
    } else {
      return "Morning";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: scaffoldColor,
          centerTitle: true,
          title: Text('Tatsam',
              style: GoogleFonts.nunito(
                  color: kBlack, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: kBlack,
        body: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          initialData: ConnectivityResult.mobile,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == ConnectivityResult.none) {
              return const OfflineWidget();
            } else {
              return BlocConsumer<CountryBloc, CountryState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    allCountries: (state) {
                      SchedulerBinding.instance
                          .addPostFrameCallback((timeStamp) {
                        Future f = Future(() {});
                        state.countries.forEach((element) {
                          f = f.then((value) => Future.delayed(
                                  const Duration(milliseconds: 200), () {
                                _allCountries.add(element);
                                _trendinsListKey.currentState
                                    .insertItem(_allCountries.length - 1);
                              }));
                        });
                      });
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return const Text('');
                    },
                    error: (state) {
                      return ServerErrorWidget(
                        onPressed: () {
                          BlocProvider.of<CountryBloc>(context)
                              .add(const CountryEvent.fetchAllCountries());
                        },
                      );
                    },
                    allCountries: (state) {
                      return Consumer<LikedProvider>(
                        builder: (context, value, child) {
                          final List<Country> _likedList =
                              value.likedTracksList;
                          return AnimatedList(
                            // controller: _scrollController,
                            key: _trendinsListKey,
                            padding: const EdgeInsets.only(bottom: 10, top: 50),
                            shrinkWrap: true,
                            itemBuilder: (context, index, animation) {
                              if (index == 2) {
                                return const FadeFromUpAnimation(
                                  begin: 0.0,
                                  end: 1.0,
                                  drop: 0.5,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, bottom: 30, top: 30),
                                    child: Text(
                                      "Explore All Countries",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                );
                              } else if (index == 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 50),
                                  child: Text(
                                    'Good ${_welcomeText()}',
                                    style: GoogleFonts.nunito(
                                      fontSize: 35,
                                    ),
                                  ),
                                );
                              } else if (index == 1) {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  key: _likedListKey,
                                  physics: const ClampingScrollPhysics(),
                                  itemCount: _likedList.length + 1,
                                  itemBuilder: (context, index) {
                                    if (index == 0) {
                                      return FadeFromUpAnimation(
                                        begin: 0.0,
                                        end: 1.0,
                                        drop: 0.5,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 30, right: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Liked Countries",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: kWhite),
                                              ),
                                              if (_likedList.isEmpty)
                                                const Text('Empty')
                                              else
                                                Row(
                                                  children: [
                                                    Text(_likedList.length
                                                        .toString()),
                                                    Lottie.asset(
                                                        'asset/heart.json',
                                                        height: 30,
                                                        width: 30,
                                                        frameRate:
                                                            FrameRate.max)
                                                  ],
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      final Country _track =
                                          _likedList[index - 1];

                                      return FadeFromUpAnimation(
                                        begin: 0.0,
                                        end: 1.0,
                                        drop: 0.5,
                                        child: FadeTransition(
                                          opacity: animation,
                                          child: SlideTransition(
                                            position: animation.drive(Tween(
                                                begin: const Offset(0, -0.1),
                                                end: Offset.zero)),
                                            child: ListTile(
                                              leading: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(_track.countryCode),
                                              ),
                                              title: Text(
                                                _track?.countryName
                                                        .toString() ??
                                                    index.toString(),
                                              ),
                                              subtitle: Text(
                                                _track?.region.toString() ??
                                                    index.toString(),
                                                style: GoogleFonts.nunito(
                                                    color: kGrey),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                );
                              } else {
                                final Country _track = _allCountries[index - 2];
                                final bool _isLiked = _likedList.any(
                                    (element) =>
                                        element.countryCode ==
                                        _track.countryCode);
                                return Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: FadeFromUpAnimation(
                                    begin: 0.0,
                                    end: 1.0,
                                    drop: 0.5,
                                    child: FadeTransition(
                                      opacity: animation,
                                      child: SlideTransition(
                                        position: animation.drive(Tween(
                                            begin: const Offset(0, -0.1),
                                            end: Offset.zero)),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(stops: [
                                            0.2,
                                            0.8,
                                            1.0
                                          ], colors: [
                                            _getCountryColor(
                                                country: _track.region),
                                            _getCountryColor(
                                                    country: _track.region)
                                                .withOpacity(0.5),
                                            kBlack
                                          ])),
                                          child: ListTile(
                                            leading: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                _track.countryCode,
                                                style: const TextStyle(
                                                    color: kBlack),
                                              ),
                                            ),
                                            trailing: _isLiked
                                                ? InkWell(
                                                    onTap: () {
                                                      _likeCountry(
                                                          country: _track,
                                                          isLiked: _isLiked);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Lottie.asset(
                                                          'asset/heart.json',
                                                          height: 30,
                                                          width: 30,
                                                          frameRate:
                                                              FrameRate.max),
                                                    ),
                                                  )
                                                : IconButton(
                                                    icon: const Icon(
                                                      FontAwesomeIcons.heart,
                                                      size: 12,
                                                    ),
                                                    onPressed: () {
                                                      _likeCountry(
                                                          country: _track,
                                                          isLiked: _isLiked);
                                                    },
                                                  ),
                                            title: Text(
                                              _track?.countryName.toString() ??
                                                  index.toString(),
                                              style: const TextStyle(
                                                  color: kBlack),
                                            ),
                                            subtitle: Text(
                                              _track.region.toString(),
                                              style: GoogleFonts.nunito(
                                                  color: kBlack),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            initialItemCount: _allCountries.length + 2,
                          );
                        },
                      );
                    },
                    loading: (_) {
                      return const Center(
                        child: FadeFromUpAnimation(
                          begin: 0.0,
                          end: 1.0,
                          drop: 0.5,
                          child: Text(
                            'Fetching Countries',
                            style: TextStyle(color: kWhite, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  void _likeCountry({Country country, bool isLiked}) {
    BlocProvider.of<LikedBloc>(context).add(LikedEvent.likeCountry(
        region: country.region,
        countryCode: country.countryCode.toString(),
        countryName: country.countryName));
    _scaffoldKey.currentState.showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: Row(
          children: [
            Lottie.asset('asset/heart.json', height: 30, width: 30),
            const SizedBox(
              width: 10,
            ),
            Text(isLiked
                ? 'Removed from Favourite Countries'
                : 'Added to Favourite Countries'),
          ],
        )));
  }

  Color _getCountryColor({String country}) {
    Color returnColor = kAfrica;
    switch (country) {
      case "Africa":
        scaffoldColor = kAfrica;
        returnColor = kAfrica;
        break;
      case "Antarctic":
        scaffoldColor = kAntartica;
        returnColor = kAntartica;
        break;
      case "Central America":
        scaffoldColor = kAmerica;
        returnColor = kAmerica;
        break;
      case "Asia":
        scaffoldColor = kAsia;
        returnColor = kAsia;
        break;
      default:
        returnColor = kAfrica;
    }
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
    return returnColor;
  }
}
