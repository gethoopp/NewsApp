import 'package:flutter/material.dart';


Widget searchBar(void Function(VoidCallback fn) setState) {
  return SafeArea(
    child: Container(
        child: Padding(
      padding: const EdgeInsets.only(top: 25, left: 20),
      child: Row(
        children: [
          const SizedBox(
            width: 280,
            height: 40,
            child: TextField(
                
                decoration: InputDecoration(
                  
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Dogecoin to the moon",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(68, 0, 0, 0)
                            )
                            ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Color.fromARGB(255, 223, 15, 32))),
                        
                        
                        
                        )),
                        
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              child: InkWell(
                  onTap: () {
                    
                  },
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notification_add_outlined,
                        color: Color.fromARGB(255, 226, 22, 22),
                      ))),
            ),
          )
        ],
      ),
    )),
  );
}
