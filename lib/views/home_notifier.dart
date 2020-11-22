import '../importer.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_notifier.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(0) int count,
    String todo,
    @Default([]) List<Map<String, String>> todoItem,
  }) = _HomepageState;
}

class HomePageNotifier extends StateNotifier<HomePageState> with LocatorMixin {
  HomePageNotifier({
    @required this.context,
  }) : super(const HomePageState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }


  void popUpForm() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text('やることを入力してください！'),
        contentPadding: const EdgeInsets.all(10),
        children: [
          Container(
            width: 250,
            padding: EdgeInsets.only(left: 4),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '忘れるなよ',
                  labelText: 'やること'),
              onChanged: (input) {
                _saveTodo(input);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '登録',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {
              _register();
            },
          )
        ],
      ),
    );
  }

  _saveTodo(input) {
    state = state.copyWith(todo: input);
  }

  _register() {
    final todoItem = {'todo': state.todo, 'day': DateTime.now().toString()};
    final newTodoItem = List<Map<String, String>>.from(state.todoItem);
    newTodoItem.add(todoItem);
    state = state.copyWith(todoItem: newTodoItem);
    Navigator.pop(context);
  }

}
