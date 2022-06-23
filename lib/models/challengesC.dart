class ChallengeC {
  final int id;
  final String name;
  final String work;
  final String time;
  final String description;
  final String image;
  final String picture;

  const ChallengeC(
      {this.id,
      this.name,
      this.work,
      this.time,
      this.description,
      this.image,
      this.picture});
}

List<ChallengeC> challengesC = [
  const ChallengeC(
      id: 1,
      name: "One Legged Balance",
      work: "Quadriceps, Glueteus Maximus, Gastrocnemius",
      time: "\u{23F1} 5 min",
      description:
          "Keeping both legs straight, shift your weight onto one leg, lifting the other off the floor. Slowly hinge forward at the hips until your torso and leg are parallel to the floor. Pause. Return to start by squeezing your glutes on the standing leg to push your hips forward.",
      image: 'assets/images/onelegbalance.jpg',
      picture:
          "https://static.lifetimedaily.com/app/uploads/2016/10/04201537/Single_Leg_Deadlift.gif"),
  const ChallengeC(
      id: 2,
      name: "Steps Ups",
      work: "Quadriceps, Hamstrings, Gastrocnemius, soleus",
      time: "\u{23F1} 5 min",
      description:
          "Using a step, stair or bench, place one feet on the raised surface and push through your feets to lift the body off the floor. As you come up, lift the other foot, and opposite side arm, into the air until the knee is at 90 degrees and the thigh is parallel to the floor. Carefully step back down and repeat with the other leg.",
      image: 'assets/images/stepups.jpg',
      picture:
          "https://thumbs.gfycat.com/AmbitiousApprehensiveArcherfish-max-1mb.gif"),
  const ChallengeC(
      id: 3,
      name: "Side Lying Leg Lift",
      work: "Gluteus Medius",
      time: "\u{23F1} 5 min",
      description:
          "Lie on your side, so the body is straight through the shoulders, hips, and knees (buttom leg can be slightly bend for balance). Lift your upper leg as high as you can, keeping it straight and toes slightly pointed upward. In a slow and controlled fashion, lower the leg.",
      image: 'assets/images/leglift.jpg',
      picture:
          "https://sp-ao.shortpixel.ai/client/q_glossy,ret_img/https://www.vissco.com/wp-content/uploads/animation/sub/side-lying-straight-leg-raise-with-theraband.gif"),
  const ChallengeC(
      id: 4,
      name: "Calf Raises",
      work: "Gastrocnemius, Soleus",
      time: "\u{23F1} 5 min",
      description:
          "Standing on a step, have your heels hanging off the edge. Stand next to the wall for support. Lift your heels as high as you can by pushing through the balls of your feet. Hold briefly, then come back down. If you are standing on the stair or step try to slowly lower the heels beyond the level of the step to increase range of motion. Repeat.",
      image: 'assets/images/calfraise.jpg',
      picture:
          "https://i.pinimg.com/originals/ff/17/23/ff1723a0aafc3cd3054cefb2cde3f417.gif"),
  const ChallengeC(
      id: 5,
      name: "pistol Squat",
      work: "Quadriceps, Glueteus Maximus, Hamstrings, Hip Abductors",
      time: "\u{23F1} 5 min",
      description:
          "Shift your weight onto one foot and lift the other off the floor. Bring the lifted leg straight out in front, as you squat with the other leg. Pause at the buttom, reaching out to touch toes. Slowly return to standing.",
      image: 'assets/images/pistolsquat.jpg',
      picture:
          "https://i0.wp.com/thumbs.gfycat.com/MammothExaltedAyeaye-size_restricted.gif"),
];
