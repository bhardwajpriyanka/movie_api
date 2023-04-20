import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController txtname = TextEditingController();

  HomeProvider? homeProviderTrue;
  HomeProvider? homeProviderFalse;

  @override
  Widget build(BuildContext context) {

    homeProviderFalse = Provider.of<HomeProvider>(context, listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                controller: txtname,
                decoration: InputDecoration(
                  hoverColor: Colors.white,
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  label: Text(
                    "Movie Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: Colors.white30,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      String name = txtname.text;
                      homeProviderFalse!.ChangeData(name);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.white30,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}