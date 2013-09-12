part of models;

class Task extends Object with ObservableMixin {
  @observable String title ;
  @observable String description;
  @observable DateTime created_at;
  @observable DateTime updated_at;
  @observable String category;
  @observable int points;
  @observable String status;
  @observable User owned_by;
  @observable User requested_by;
  @observable List<Tag> tags;

  Task(String title, {String description, String category, int points,
                      String status: 'pending', User owned_by,
                      User requested_by, List<Tag> tags}) {
    this.title = title;
    this.description = description;
    this.points = points;
    this.created_at = new DateTime.now();
    this.updated_at = new DateTime.now();
    this.status = status;
  }
}