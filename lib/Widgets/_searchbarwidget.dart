import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      height: 50,
                      child: const TextField(
                          decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Recherche...',
                        hintStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: OutlineInputBorder(gapPadding: 2),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                      ))),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        color: Colors.white),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.list_dash,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        color: Colors.white),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.leaf_arrow_circlepath,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ])));
  }
}
