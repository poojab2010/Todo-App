class Task
{
  final String name;
  bool isdone;
  Task({this.isdone = false,this.name});
  void toggleDone()
  {
    isdone=!isdone;
  }
}