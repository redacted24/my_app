# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

# clean slate
# Only run if Project exists
Project.delete_all
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

# Online Commerce Platform
project = Project.new(
    name: "Fashion Store",
    url_string: "fashion_store",
    tags: [ "React", "Spring", "TypeScript" ],
    github_link: "https://github.com/McGill-ECSE321-W26/ecse321-project-18",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "An online platform for a local fashion store, where customers can order and get their clothes delivered, while managers can control item stock and pricings.",
    long_description: "
    <div>
      This group project, associated with ECSE 321 (Introduction to
      Software Engineering) at McGill University,
      consists of developing an online platform for a local fashion
      store as a team of 7.
    </div>
    <br>
    <ul class=\"list-disc list-inside\">
      <li>
        Supervised and defined the implementation of unit, integration and persistence
        testing across all endpoints using
        <mark>JUnit 5</mark>
        and Mockito, leading to a near <mark>100%</mark> method
        and instruction coverage.
      </li>
      <li>
        Constructed the backend for the website using the <mark>Spring</mark> framework, respecting the <mark>MVC</mark> architecture.
      </li>
      <li>
        Automated a CI/CD pipeline with GitHub Actions workflows, ensuring all pushes to main build without fail
      </li>
      <li>
        Finalized the website in a 3-month period in a team of <mark>7</mark> by effective collaboration using Agile methodology.
      </li>
    </ul>
    ",
    featured: 1,
    date: Time.new(2026, 01, 01),
    opensource: true,
    preview_image: ""
)
project.save

# Poker playground
project = Project.new(
    name: "Poker Playground",
    url_string: "poker_playground",
    tags: [ "Python", "Flask", "React" ],
    github_link: "http://www.github.com/redacted24/poker",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "An interactive website to learn how to play poker, and play against different poker playstyles. Developed as part of the Capstone project at Marianopolis College.",
    long_description: "",
    featured: 1,
    date: Time.new(2024, 03, 01),
    opensource: true,
    preview_image: "poker_playground_preview.png"
)
project.save

# chatanalyzer
project = Project.new(
    name: "Chat Analyzer",
    url_string: "chat_analyzer",
    tags: [ "Python", "Java" ],
    github_link: "",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "Developed a Windows desktop app that decrypts locally stored databases of a popular messaging service and
monitors user chats for potentially sensitive topics.",
    long_description: "There exists a version of the messaging service that stores the user messages locally, in an encrypted SQLite3 database.
    By finding a key stored in memory and decrypting this database, it is possible to analyze the activity of a user and
    monitor the chat messages.<br><br>
    Made with Java and its JavaFX GUI framework.",
    featured: 1,
    date: Time.new(2025, 07, 07),
    opensource: false,
    preview_image: "",
)
project.save


# Duel Vision
project = Project.new(
    name: "Duel Vision",
    url_string: "duel_vision",
    tags: [ "React", "Websockets", "Mediapipe" ],
    github_link: "https://github.com/redacted24/duelvision",
    devpost_link: "",
    website_link: "",
    custom_link: "",

    description: "Developed and deployed an online multiplayer web browser game for a hackathon in under 24 hours.",
    long_description: "Integrated computer vision through OpenCV and
    MediaPipe to enable players to control and shoot each other's spaceships with simple hand movements.",
    featured: 0,
    date: Time.new(2024, 01, 01),
    opensource: true,

    preview_image: "duelvision.jpg",
    extra_images: "duelvision_stats.jpg"
)
project.save


# conuhacks Sapmechanic
project = Project.new(
    name: "SAP Mechanic",
    url_string: "sapmechanic",
    tags: [ "React", "Python" ],
    github_link: "https://github.com/sivabalansm/conuhacks",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "Designed a solution for a hackathon problem involving reservation schedule optimization for an auto repair shop.",
    long_description: "",
    featured: 0,
    date: Time.new(2024, 01, 02),
    opensource: true,

    preview_image: "",
    extra_images: ""
)
project.save

# Portfolio
project = Project.new(
    name: "Portfolio website",
    url_string: "portfolio",
    tags: [ "Ruby on Rails", "Kamal" ],
    github_link: "https://github.com/redacted24/my_app",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "Designed, created and deployed a personal portfolio website.",
    long_description: "It's what you're seeing now!",
    featured: 0,
    date: Time.new(2025, 11, 04),
    opensource: true,
    preview_image: "portfoliov1.png",
    extra_images: "",
)
project.save



# Courier robot
project = Project.new(
    name: "Courier Robot",
    url_string: "courier_robot",
    tags: [ "BrickPi", "Python" ],
    github_link: "https://github.com/flavieq88/courier_robot",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "This project was developed in the context of ECSE 211 - Design Principles and Methods.
    The goal was to create a delivery robot capable of delivering packages to different areas based on given criteria.",
    long_description: "",
    featured: 1,
    date: Time.new(2025, 11, 04),
    opensource: true,

    preview_image: "",
    extra_images: ""
)
project.save

# Gamejam 2026
project = Project.new(
    name: "Gamejam 2026",
    url_string: "gamejam26",
    tags: [ "GDScript" ],
    github_link: "https://github.com/redacted24/gamejam26",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "A small vampire survivor-esque game made during McGameJam 2026.
    Fight your way through levels while keeping your hunger in check.",
    long_description: "",
    featured: 1,
    date: Time.new(2026, 02, 10),
    opensource: true,

    preview_image: "gamejam26_titlescreen.png",
    extra_images: "gamejam26_cutscene.png,gamejam26_example.png"
)
project.save

# Random Walk C
project = Project.new(
    name: "Random Walk in C",
    url_string: "randwalk",
    tags: [ "C", "SDL2" ],
    github_link: "https://github.com/redacted24/random_walk",
    devpost_link: "",
    website_link: "",
    custom_link: "",
    description: "A simple random walk built with Simple MediaDirect Layer 2. Choose the number of walks to generate, and visualize it all with nice colors.",
    long_description: "",
    featured: 1,
    date: Time.new(2025, 12, 10),
    opensource: true,

    preview_image: "randwalk.gif",
    extra_images: ""
)
project.save
