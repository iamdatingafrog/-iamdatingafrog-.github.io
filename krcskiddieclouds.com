html
<!DOCTYPE html>
<html>
<head>
  <style>
    /* Button styling */
    .admission-button {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      background-color: #ff9f00; /* Orange shade */
      border: none;
      color: white;
      padding: 20px 40px; /* Increase padding to make buttons bigger */
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 24px; /* Increase font size */
      border-radius: 20px; /* Rounded edges */
      transition: background-color 0.3s ease; /* Smooth transition */
      margin-right: 20px; /* Add margin-right to provide spacing between buttons */
    }

    /* Button hover effect */
    .admission-button:hover {
      background-color: #ff7800; /* Darker orange on hover */
    }

    /* Button decorations */
    .admission-button::before,
    .admission-button::after {
      content: "";
      position: absolute;
    }

    /* Left decoration */
    .admission-button::before {
      width: 20px;
      height: 20px;
      background-color: #ff9f00; /* Orange shade */
      bottom: 5px;
      left: -30px; /* Adjust the position */
      border-radius: 50%; /* Circle shape */
    }

    /* Right decoration */
    .admission-button::after {
      width: 30px;
      height: 30px;
      background-color: #ff9f00; /* Orange shade */
      top: -10px; /* Adjust the position */
      right: -20px; /* Adjust the position */
      border-top-right-radius: 50%; /* Rounded shape */
      border-bottom-left-radius: 50%; /* Rounded shape */
    }

    /* Navbar styling */
    .navbar {
      background-color: #f9e7c8; /* Light yellow shade background */
      padding: 15px;
    }

    .navbar ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }

    .navbar li {
      display: inline;
    }

    .navbar li a {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      display: block;
      padding: 10px 20px;
      color: #333;
      text-decoration: none;
      font-weight: bold;
      font-size: 20px;
      transition: color 0.3s ease;
    }

    .navbar li a:hover {
      color: #ff9f00; /* Orange shade */
    }

    /* Video container styling */
    .video-container {
      position: relative;
      padding-bottom: 56.25%;
      height: 0;
      overflow: hidden;
      margin-bottom: 30px;
      background-color: #f9e7c8; /* Light yellow shade background */
    }

    .video-container iframe {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }

    /* Information and buttons styling */
    .container {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      width: 80%;
      margin: 0 auto;
      text-align: center;
    }

    .scroll-info {
      margin-bottom: 30px;
    }

    .button-container {
      margin-bottom: 30px;
    }

    /* Form styling */
    .form-container {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      background-color: #b3d6ff; /* Bluish shade background */
      padding: 40px;
      border-radius: 20px;
      max-width: 600px;
      margin: 0 auto;
      box-sizing: border-box;
    }

    .form-container label {
      display: block;
      margin-bottom: 10px;
      color: #0047ab; /* Dark blue text color */
    }

    .form-container input[type="text"],
    .form-container input[type="number"] {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: none;
      margin-bottom: 20px;
    }

    .form-container input[type="submit"] {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      background-color: #ff9f00; /* Orange shade */
      color: white;
      padding: 15px 30px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 20px;
      transition: background-color 0.3s ease; /* Smooth transition */
    }

    .form-container input[type="submit"]:hover {
      background-color: #ff7800; /* Darker orange on hover */
    }

    /* About Us section styling */
    .about-us-container {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      background-color: #fffdcf; /* Light yellow shade background */
      padding: 40px;
      border-radius: 20px;
      max-width: 800px;
      margin: 0 auto;
      box-sizing: border-box;
      text-align: center;
    }

    .about-us-container h2 {
      font-size: 30px;
      margin-bottom: 20px;
      color: #0047ab; /* Dark blue text color */
    }

    .about-us-container p {
      color: #0047ab; /* Dark blue text color */
    }

    /* Programs section styling */
    .programs-container {
      font-family: 'Comic Sans MS', cursive; /* Kid-friendly font */
      max-width: 800px;
      margin: 0 auto;
      text-align: center;
    }

    .programs-container h2 {
      font-size: 30px;
      margin-bottom: 20px;
      color: #0047ab; /* Dark blue text color */
    }

    .programs-container ul {
      list-style-type: none;
      padding: 0;
      margin: 0;
      text-align: left;
    }

    .programs-container li {
      margin-bottom: 10px;
      color: #0047ab; /* Dark blue text color */
    }
  </style>
</head>
<body>
  <nav class="navbar">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#about-us">About Us</a></li>
      <li><a href="#programs">Programs</a></li>
      <li><a href="#">Gallery</a></li>
      <li><a href="#admissions">Admissions</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>

  <div class="video-container">
    <iframe
      width="100%"
      height="100%"
      src="https://www.youtube.com/embed/24DjYkGpVL4?si=WZLHOV_2vAheBCI3&autoplay=1&controls=0&loop=1&mute=1"
      frameborder="0"
      allow="autoplay"
      allowfullscreen
    ></iframe>
  </div>

  <div class="container">
    <div class="scroll-info">
      <p>Office Number: 9120301332</p>
      <p>Email: trckiddie@gmail.com</p>
      <p>Address: Buddha Vihar, Part-C, Taramandal, Gorakhpur, Uttar Pradesh, India</p>
    </div>
    <div class="notice-board">
      <h2 class="notice-title">Welcome to TRC's Kiddie Clouds!</h2>
      <p>Here you'll find exciting activities, fun events, and much more.</p>
      <p>Check out our gallery for captivating pictures and videos!</p>
      <a href="#" class="admission-button">Gallery</a>
    </div>
    <div class="button-container">
      <a href="#" class="admission-button">Get Admission</a>
      <a href="#about-us" class="admission-button">About Us</a>
    </div>

    <!-- About Us Section -->
    <section id="about-us">
      <div class="about-us-container">
        <h2>About Us</h2>
        <p>Hey there! Welcome to the "TRC's Kiddie Clouds" kindergarten website! We're a warm and loving place where young learners can thrive and have fun. Our dedicated teachers are passionate about creating a nurturing environment where kids can grow, learn, and explore. We offer engaging activities, hands-on experiences, and a focus on building social skills and creativity. We can't wait to meet your little one and be a part of their amazing educational journey!</p>
      </div>
    </section>

    <!-- Programs Section -->
    <section id="programs">
      <div class="programs-container">
        <h2>Programs</h2>
        <ul>
          <li>Hand painting</li>
          <li>Treasure hunt</li>
          <li>Thread painting</li>
          <li>Exercise</li>
          <li>Yoga</li>
          <li>Paper tearing activity</li>
          <li>Drawing</li>
          <li>Doodling</li>
          <li>Collage making</li>
          <li>Rakhi making</li>
          <li>Talent contest</li>
          <li>And much more!</li>
        </ul>
      </div>
    </section>

    <!-- Admissions Section -->
    <section id="admissions">
      <div class="form-container">
        <h2>Admission Form</h2>
        <form>
          <label for="student-name">Student's Name:</label>
          <input type="text" id="student-name" required>

          <label for="father-name">Father's Name:</label>
          <input type="text" id="father-name" required>

          <label for="mother-name">Mother's Name:</label>
          <input type="text" id="mother-name" required>

          <label for="mobile-number">Mobile Number:</label>
          <input type="number" id="mobile-number" required>

          <input type="submit" value="Submit">
        </form>
      </div>
    </section>
  </div>
</body>
</html>


