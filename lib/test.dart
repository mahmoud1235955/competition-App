/*  separatorBuilder: (context, index) {
                return SizedBox(width: 25);
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final images = imageGroups[index];
                return Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFFEF3E2),
                    border: Border.all(color: Color(0xFFc9c8ac), width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(title[index]),
                      SizedBox(height: 30),
                      Stack(
                        children: [
                          CircularPercentIndicator(
                            animation: true,
                            radius: 80.0,
                            lineWidth: 5.0,
                            percent: circle[index],
                            animateFromLastPercent: true,

                            progressColor: Color(0xFF708871),
                          ),
                          Positioned(
                            right: 45,
                            bottom: 45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  percent[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  (newSalary * circle[index]).toStringAsFixed(
                                    3,
                                  ),
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),

                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              imageGroups[index]
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "assets/assets/images/l1.png",
                            ),
                          ),
                          Text(""),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "assets/assets/images/l1.png",
                            ),
                          ),
                          Text(""),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "assets/assets/images/l1.png",
                            ),
                          ),
                          Text(""),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "assets/assets/images/l1.png",
                            ),
                          ),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                );
              },
              
              
              =======================================
               Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF3E2),
                          border: Border.all(color: Color(0xFFc9c8ac), width: 5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text("مصروفاتك الاساسيه الثابتة"),
                            SizedBox(height: 30),
                            Stack(
                              children: [
                                CircularPercentIndicator(
                                  animation: true,
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  animateFromLastPercent: true,
            
                                  progressColor: Color(0xFF708871),
                                ),
                                Positioned(
                                  right: 45,
                                  bottom: 45,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "50%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        (newSalary * 0.5).toStringAsFixed(3),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
            
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l1.png",
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l2.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l3.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l4.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l5.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF3E2),
                          border: Border.all(color: Color(0xFFc9c8ac), width: 5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text("مصروفاتك الاساسيه الثابتة"),
                            SizedBox(height: 30),
                            Stack(
                              children: [
                                CircularPercentIndicator(
                                  animation: true,
                                  radius: 80.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  animateFromLastPercent: true,
            
                                  progressColor: Color(0xFF708871),
                                ),
                                Positioned(
                                  right: 45,
                                  bottom: 45,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "50%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        (newSalary * 0.5).toStringAsFixed(3),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
            
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l1.png",
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l2.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l3.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l4.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage(
                                    "assets/assets/images/l5.png",
                                  ),
                                ),
                                Text(""),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ]
            ),
          ),
        ],
               */