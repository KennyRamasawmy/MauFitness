class ChallengeBCardio {
  final int id;
  final String name;
  final String work;
  final String time;
  final String description;
  final String image;
  final String picture;

  const ChallengeBCardio(
      {this.id,
      this.name,
      this.work,
      this.time,
      this.description,
      this.image,
      this.picture});
}

List<ChallengeBCardio> challengesBCardio = [
  const ChallengeBCardio(
      id: 1,
      name: "Split Squat Jumps",
      work: "Quadriceps, Glueteus Maximus, Hamstrings",
      time: "\u{23F1} 5 min",
      description:
          "To do Split Squat Jumps, step one foot back and sink into a deep lunge, bending both knees as if you're going to half kneel down on the ground. Make sure your front heel is down as you lunge back. Then explode up and jump up out of the lunge to switch and land in a lunge on the other side.",
      image: 'assets/images/splitsquatjump.JPG',
      picture:
          "https://flabfix.com/wp-content/uploads/2019/06/Split-Jump-Squat.gif"),
  const ChallengeBCardio(
      id: 2,
      name: "Jumping Jacks",
      work: "Quadriceps, Glueteus Maximus, Hamstrings, Lads",
      time: "\u{23F1} 5 min",
      description:
          "Stand upright with your legs together, arms at your sides. Bend your knees slightly, and jump into the air. As you jump, spread your legs to be about shoulder-width apart. Stretch your arms out and over your head. Jump back to starting position.",
      image: 'assets/images/jjumpingjacks.JPG',
      picture: "https://www.icegif.com/wp-content/uploads/icegif-134.gif"),
  const ChallengeBCardio(
      id: 3,
      name: "Side Lunge",
      work: "Quadriceps, Glueteus Maximus, Hamstrings, Hip Adductors",
      time: "\u{23F1} 5 min",
      description:
          "Standing with hands on the hips, take a step to the side with one foot. Bend into the knee of the stepping leg and shift your weight to that side. Kepp your chest up and weight over your legs as you lower your hips. Pause at the butttom, then push yourself back to standing.",
      image: 'assets/images/sidelunge.jpg',
      picture:
          "https://wm-blog-content.s3-us-west-2.amazonaws.com/MOVEMENTS/HALF-SIDE-LUNGES.gif"),
  const ChallengeBCardio(
      id: 4,
      name: "Jump Lunge",
      work:
          "Quadriceps, Glueteus Maximus, Hamstrings, Gastrocnemius, Hip Flexos",
      time: "\u{23F1} 5 min",
      description:
          "To do jumping lunges, first get into a basic lunge position by taking one big step forward with your right leg and bending both of your knees to a 90-degree angle. Then jump vertically, bringing your left leg forward in mid-air before landing and returning to the lunge position.",
      image: 'assets/images/jumplunge.jpg',
      picture:
          "https://www.verywellfit.com/thmb/OSRzIFomaC_U_fsQJkdfDvl93kM=/800x0/filters:gifv(webm)/69-3119998-Jump-Lunge-GIF-df2c0847f8c14a609380f3b89eb855b1.gif"),
  const ChallengeBCardio(
      id: 5,
      name: "Butt Kicks",
      work: "Hamstrings",
      time: "\u{23F1} 5 min",
      description:
          "Stand tall with your feet shoulder-width apart and face forward. Start kicking your feet up, until the heels touch the glutes, and pump your arms at the same time. Repeat until set is complete.",
      image: 'assets/images/buttkicks.JPG',
      picture:
          "https://evofitness.at/wp-content/uploads/2017/04/Butt-kicks.gif"),
];
