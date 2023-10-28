abstract class AppEvent {
  const AppEvent();
}

class RefreshEvent extends AppEvent {
  final String body;
  const RefreshEvent(this.body);
}
