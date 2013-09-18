import 'package:polymer/polymer.dart';
import 'package:tracker/models.dart';

@CustomTag('task-element')
class TaskElement extends PolymerElement with ObservableMixin {
  bool get applyAuthorStyles => true;
  @observable Task task;
  @observable TaskForm taskForm;

  // TODO: put this logic somewhere else.
  void toggleDisplay() {
    taskForm.inUse = !taskForm.inUse;
  }

  inserted() {
    super.inserted();
    taskForm = new TaskForm.fromTask(task);
  }
}