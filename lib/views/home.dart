import '../importer.dart';

List item = ['aaa', 'bbb'];

class HomePage extends StatelessWidget {
  const HomePage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(providers: [
      StateNotifierProvider<HomePageNotifier, HomePageState>(
          create: (context) => HomePageNotifier(context: context))
    ], child: const HomePage._());
  }

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<HomePageNotifier>();
    return Scaffold(
      appBar: AppBar(
        title: Text('ほっとくなよ！！'),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.done_all),
            onPressed: () => Navigator.of(context).pushReplacement(
              new MaterialPageRoute(
                builder: (BuildContext context) {
                  return HomePage.wrapped();
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          notifier.popUpForm();
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('更新やアプリを落とすとタスクが消えます'),
                  Text('つまり早めに終わらそう！！！'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Builder(builder: (context) {
              final todoItem =
                  context.select((HomePageState state) => state.todoItem);
              return ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: todoItem.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(todoItem[index]['todo']),
                        Text(todoItem[index]['day'].toString().substring(0, 19),
                            style: TextStyle(color: Colors.black45)),
                      ],
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
