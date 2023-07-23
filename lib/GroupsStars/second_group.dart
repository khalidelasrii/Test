import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/bloc/etoil_bloc.dart';




class SecondGroup extends StatelessWidget {
  const SecondGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic eventis;
Color amber = Colors.amber;
Color black = Colors.black;
    double lasomme = 0;
    return BlocProvider(
        create: (context) => EtoilBloc(),
        child: StatefulBuilder(builder: (context, setState) {
          if (eventis != null) {
            setState(() {
              BlocProvider.of<EtoilBloc>(context).add(eventis);
          
            });
          }
      
          return Row(
            children: [
////////////////////////////////////////////////////////////Star 1
              MouseRegion(
                onEnter: (valeur) {
                  setState(() {
                    eventis = MousRegeontEvent1();
                  });
                },
                onExit: (valeur) {
                  setState(() {
                    eventis = MousRegeontExitEvent1();
                  });
                },
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      lasomme = 1;
                    });
          BlocProvider.of<EtoilBloc>(context).add(Total2(Total: 1));

                  },
                  icon: BlocBuilder<EtoilBloc, EtoilState>(
                    builder: (context, state) {
                      if (state is EtoilInitial) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState1 ||
                          state is MousRegeontState2 ||
                          state is MousRegeontState3 ||
                          state is MousRegeontState4 ||
                          state is MousRegeontState5) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 30,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme == 0)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      }
                      if (((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme != 0))) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 25,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ),
////////////////////////////////////////////////////////Star 2
              MouseRegion(
                onEnter: (valeur) {
                  setState(() {
                    eventis = MousRegeontEvent2();
                  });
                },
                onExit: (valeur) {
                  setState(() {
                    eventis = MousRegeontExitEvent2();
                  });
                },
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      lasomme = 2;
                   
                    });
                      BlocProvider.of<EtoilBloc>(context).add(Total2(Total: 2));
                  },
                  icon: BlocBuilder<EtoilBloc, EtoilState>(
                    builder: (context, state) {
                      if (state is EtoilInitial) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState1) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState2 ||
                          state is MousRegeontState3 ||
                          state is MousRegeontState4 ||
                          state is MousRegeontState5) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 30,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme == 0)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme > 1)) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 25,
                        );
                      } else if (((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          lasomme < 2)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ),
////////////////////////////////////////////Star 3;
              MouseRegion(
                onEnter: (valeur) {
                  setState(() {
                    eventis = MousRegeontEvent3();
                  });
                },
                onExit: (valeur) {
                  setState(() {
                    eventis = MousRegeontExitEvent3();
                  });
                },
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      lasomme = 3;
                     
                    });
                      BlocProvider.of<EtoilBloc>(context).add(Total2(Total: 3));
                  },
                  icon: BlocBuilder<EtoilBloc, EtoilState>(
                    builder: (context, state) {
                      if (state is EtoilInitial) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState1 ||
                          state is MousRegeontState2) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState3 ||
                          state is MousRegeontState4 ||
                          state is MousRegeontState5) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 30,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme == 0)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme > 2)) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 25,
                        );
                      } else if (((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          lasomme < 3)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ),
////////////////////////////////////////////Star 4;
              MouseRegion(
                onEnter: (valeur) {
                  setState(() {
                    eventis = MousRegeontEvent4();
                  });
                },
                onExit: (valeur) {
                  setState(() {
                    eventis = MousRegeontExitEvent4();
                  });
                },
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      lasomme = 4;
                     
                    });
                      BlocProvider.of<EtoilBloc>(context).add(Total2(Total: 4));
                  },
                  icon: BlocBuilder<EtoilBloc, EtoilState>(
                    builder: (context, state) {
                      if (state is EtoilInitial) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState1 ||
                          state is MousRegeontState2||
                          state is MousRegeontState3) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (
                          state is MousRegeontState4 ||
                          state is MousRegeontState5) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 30,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme == 0)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme > 3)) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 25,
                        );
                      } else if (((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          lasomme < 4)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ),
              ////////////////////////////////////////////Star 5;
              MouseRegion(
                onEnter: (valeur) {
                  setState(() {
                    eventis = MousRegeontEvent5();
                  });
                },
                onExit: (valeur) {
                  setState(() {
                    eventis = MousRegeontExitEvent5();
                  });
                },
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      lasomme = 5;
                     
                    });
                      BlocProvider.of<EtoilBloc>(context).add(Total2(Total: 5));
                  },
                  icon: BlocBuilder<EtoilBloc, EtoilState>(
                    builder: (context, state) {
                      if (state is EtoilInitial) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (state is MousRegeontState1 ||
                          state is MousRegeontState2||
                          state is MousRegeontState3||
                          state is MousRegeontState4) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if (
                          state is MousRegeontState5) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 30,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme == 0)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      } else if ((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          (lasomme > 4)) {
                        return Icon(
                          Icons.star,
                          color: amber,
                          size: 25,
                        );
                      } else if (((state is MousRegeontStateExit1 ||
                              state is MousRegeontStateExit2 ||
                              state is MousRegeontStateExit3 ||
                              state is MousRegeontStateExit4 ||
                              state is MousRegeontStateExit5) &&
                          lasomme < 5)) {
                        return Icon(
                          Icons.star,
                          color: black,
                          size: 25,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
