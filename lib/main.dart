import 'package:flutter/material.dart';
import 'package:the_fridge/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RootPage(),
      title: "Home",
      debugShowCheckedModeBanner: false,
    );
  }
}

class RootPage extends StatefulWidget {
  /* Widget che può cambiare stato. Lo schermo ha bisogno di essere 
  ricaricato se l'utente es. fa click su qualcosa e la visualizzazione cambia */
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  /*Le variabili sempre prima del widget build e di override. Se messe
  all'interno di Widget build, ad ogni refresh dello schermo le ricarica.  */
  int currentPage = 0;
  List<Widget> pages = const [
    //lista di pagine presenti
    Home(),
  ];


//roba in più
@override
  Widget build(BuildContext context) {
    return Scaffold(
      /*contiene elementi come backgroundColor, 
        il body, ecc */
      appBar: AppBar(
        //una bar visualizzata nella parte superiore di Scaffold
        title: const Text('App Bar'), //testo nella app bar
      ),
      body: pages[currentPage], //il body visualizza la pagina selezionata
      floatingActionButton: FloatingActionButton(
        //button premibile
        onPressed: () {
          //interno graffe: azione pressione button
          debugPrint('Floating Action Button'); //scrive testo in debug console
        },
        backgroundColor: Colors.amber, //colore button
        child: const Icon(Icons.add, //contenuto button
            color: Colors.black), //colore contenuto button
      ),
      bottomNavigationBar: NavigationBar(
        //bar nel fondo
        destinations: const [
          /*destinazioni: button che premuti portano a una 
        destinazione (un'altra schermata)*/
          //almeno due icone
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          /*icona Home*/
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
          //Icona Profile
        ],
        onDestinationSelected: (int index) {
          //reagisce alla selezione di una destinazione
          setState(() {
            /*Notifica la struttura (lo stateful widget) che lo 
          stato interno di questo oggetto è cambiato. Il framework fa il refresh
          dell'interfaccia.*/
            currentPage = index;
          });
        },
        selectedIndex:
            currentPage, /*Determina quale delle destinazioni è 
        selezionata attualmente. La destinatione passa da unselected a selected. */
      ),
    );
  }
}