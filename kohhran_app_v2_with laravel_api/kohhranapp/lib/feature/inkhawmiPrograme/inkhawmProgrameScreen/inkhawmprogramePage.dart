import 'package:flutter/material.dart';
import 'package:kohhranapp/core/common/constants.dart';

class InkhawmProgramePage extends StatelessWidget {
  const InkhawmProgramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Synday Program',
                style: Constants.titleSize,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              thickness: 2,
            ),
          ),
          stepProgress(),
        ],
      ),
    );
  }

  Padding stepProgress() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(50, 24, 20, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Stack(
                      children: [
                        Container(
                          width: 12,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 73, 60),
                            shape: BoxShape.circle,
                          ),
                          alignment: AlignmentDirectional(0, -1),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 45, 139, 122),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Chawhma'),
                    Container(
                      width: 200,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Zirtirt:'),
                        Text('Hruaia'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Zirlai:'),
                        Text('Ramthar'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),

          ///////////////////
        ],
      ),
    );
  }
}
