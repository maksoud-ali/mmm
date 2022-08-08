import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc1/bloc/bloc1_bloc.dart';
import 'bloc2/bloc/bloc2_bloc.dart';

void main() {
  runApp(const MyApp());
}
 Color  cc = Colors.black12 ;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      Widget itemWidget(BuildContext context , int index  , Bloc2Initial state){
  return InkWell(
                      child: Container(   color: index==state.index?state.c1:cc, padding: EdgeInsets.all(10),height: 50, width: 50,child: Text('{$index}')),
                      onTap: () {
                       BlocProvider.of<Bloc2Bloc>(context).add(Bloc2ClickEvent(index:  index)); 
            
                      },
                    );
}

   
    return MultiBlocProvider(
        providers: [
        BlocProvider( create: (context) => Bloc1Bloc()..add(Bloc1EEvent())),
         BlocProvider( create: (context) => Bloc2Bloc())
        ],
        child: MaterialApp(
          home: Scaffold(
              body: BlocBuilder<Bloc1Bloc, Bloc1State>(
                builder: (context, state1) {
               if (state1 is Bloc1Initial) { 
                cc = state1.c1 ;  
                  return ListView.builder(
                  itemBuilder: (context , index) {
                    return BlocBuilder<Bloc2Bloc, Bloc2State>(
                      builder: (context , state2) {
                        
                      if (state2 is Bloc2Initial ) {

                          return itemWidget(context, index , state2) ; 
                      }else throw UnimplementedError();
                      },
                    );
                  },
                  itemCount: 3);
                 
               }else throw  UnimplementedError();
                },
              ),
              appBar: AppBar(
                title: Text('test'),
              )),
        ));


        
  }

}



