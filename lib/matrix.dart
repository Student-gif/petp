class Thematrix {
  static List<List<num>> copyMatrix(List<List<num>> list) {
    List<List<num>> newlist = [];
    int index = 0;
    for (List<num> l in list) {
      newlist.add([]);
      for (num d in l) {
        newlist[index].add(d);
      }
      index++;
    }
    return newlist;
  }
}

void main() {
  print(Thematrix.copyMatrix([
    [1, 5, 6, 7, 8]
  ]));
}
