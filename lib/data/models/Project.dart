class Project {
  final String? title, image, description, date, source1, source2, source3;
  final int? type;

  // mode of projects
  // using type = 0 or 1 or 2 or 3 or 4 or 5
  // when be 0 is project did't have  any link and invisable text button in ui
  // when be 1 is project have link as android only in ui
  // when be 2 is project have link as ios only in ui
  // when be 3 is project have link as android and ios in ui
  // when be 4 is project have link as android and website in ui
  // when be 5 is project have link as ios and website in ui
  // when be 6 is project have link as android and ios and website in ui
  // when be 7 is project have link as viewLink in ui and link be in source1 and other sources be empty

  Project(
      {this.title,
      this.image,
      this.description,
      this.date,
      this.type,
      this.source1,
      this.source2,
      this.source3});
}

List<Project> demo_projects = [
  Project(
    title: "project name",
    image: "",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 0,
    source1: "",
    source2: "",
    source3: "",
  ),
  Project(
    title: "project name1",
    image: "",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 1,
    source1: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source2: "",
    source3: "",
  ),
  Project(
    title: "project name2",
    image:"",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 2,
    source1: "",
    source2: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source3: "",
  ),
  Project(
    title: "project name3",
    image:"",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 3,
    source1: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source2: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source3: "",
  ),
  Project(
    title: "project name4",
    image:"",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 4,
    source1: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source2: "",
    source3: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  ),
  Project(
    title: "project name5",
    image: "",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 5,
    source1: "",
    source2: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source3: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  ),
  Project(
    title: "project name6",
    image:"",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 6,
    source1: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source2: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    source3: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  ),
  Project(
    title: "project name7",
    image:"",
    description:
        "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 7,
    source1: "",
    source2: "",
    source3: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  ),
  Project(
    title: "project name8",
    image:"",
    description:
    "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    date: "23 JUN 2021",
    type: 0,
    source1: "",
    source2: "",
    source3: "",
  ),
];
