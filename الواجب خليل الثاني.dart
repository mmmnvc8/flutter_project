class RowAndStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Icon(Icons.person, color: Colors.white, size: 40),
          ],
        ),
        SizedBox(width: 20),
        Text("This is a Stack inside a Row"),
      ],
    );
  }
}