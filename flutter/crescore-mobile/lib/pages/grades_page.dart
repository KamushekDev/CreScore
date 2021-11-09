import 'package:crescore/generated/Scores.pb.dart';
import 'package:crescore/grpc/scores.dart';
import 'package:crescore/pages/shared.dart';
import 'package:crescore/widgets/grade_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class GradesPage extends StatefulWidget {
  static const String routeName = '/grades';

  const GradesPage({Key? key}) : super(key: key);

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Shared.drawer(context),
      appBar: Shared.appBar('Grades', context),
      body: Center(
        child: FutureBuilder(
          future: GetIt.I.get<ScoresClient>().getGrades(38),
          builder: (BuildContext context, AsyncSnapshot<List<Grade>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              case ConnectionState.done:
                {
                  if (snapshot.hasData) {
                    var games = snapshot.data!;
                    return ListView.builder(
                      itemCount: games.length,
                      itemBuilder: (context, index) {
                        return GradeWidget(games[index]);
                      },
                    );
                  }
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  return Text("WTF!?!?!?!?");
                }
              case ConnectionState.none:
              case ConnectionState.active:
                return Text("Wrong state!?!?!??!");
            }
          },
        ),
      ),
    );
  }
}
