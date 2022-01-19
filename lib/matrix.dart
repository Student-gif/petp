class Thematrix {
  int cell = 1;
  int cell2 = 0;
  int cell3 = 0;
  int cell4 = 0;
  int cell5 = 0;
  int cell6 = 0;
  Thematrix(
    this.cell,
    this.cell2,
    this.cell3,
    this.cell4,
    this.cell5,
    this.cell6,
  );
}

Thematrix x = Thematrix(5, 2, 3, 4, 5, 6);
Thematrix y = Thematrix(1, 2, 3, 4, 5, 6);
Thematrix c = Thematrix(1, 2, 3, 4, 5, 6);
Thematrix? addition() {
  c.cell = x.cell + y.cell;
  c.cell2 = x.cell2 + y.cell2;
  c.cell3 = x.cell3 + y.cell3;
  c.cell4 = x.cell4 + y.cell4;
  c.cell5 = x.cell5 + y.cell5;
  c.cell6 = x.cell6 + y.cell6;
  print(c.cell);
}

void main() {
  addition();
}
