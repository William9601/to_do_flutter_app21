class Item {
  String content;
  String date;
  bool completed = false;
  bool userLiked = false; //rm

  Item(this.content, this.date);

  void likePost() {
    completed = !completed;
  }
}
