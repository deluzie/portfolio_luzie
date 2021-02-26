# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all

User.destroy_all

user = User.create(
  email: "luzie@luzie.com",
  password: "testing",
  )

1.times do |counter|

  project = Project.new(
    title: "the man-machine",
    introduction: "In the sense of Giambattista Vicos Homo Faber we are only able to fully comprehend what we would be able to construct ourselves. But the structures of nowadays society are no longer to be decoded without the use of computers and are not based on handed-down knowledge alone, but the collection and evaluation of data.
            What if this present time, in which technical complexity has overcome peoples comprehension of the world they live in, could be encountered by means of design?",
    description: "In an entanglement of man and machine, the analogue 3D-printer produces tangible objects. Designing numerous containers in exemplary use, 'the man-machine' is able to make a mutual dependence visible. By using the pantograph-method as an analogue way of data transmission, the results are not only 3-dimensional objects, but also correlating drawings, which are a reference to the individual process of their creation.
            As an addition to the machine, a digital web-based archive collects experimental approaches to 3D-printing and other technology-based production techniques, to discover the possibilities for designers and artist that lay within.",
    category: "design",
    year: "2019"
    )
  project.user = user

  file = URI.open('https://germandesigngraduates.com/wp-content/uploads/2020/06/maschine_01-scaled.jpg')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.jpg", content_type: 'image/jpg')

  project.save!
end

1.times do |counter|

  project = Project.new(
    title: "Handwerker",
    introduction: "Inspired by the craftsmanship of thuringian glass blowers, Handwerker was created as a new interpretation of the traditional forest glass with its distinct green colour which is linked to the iron contents of the thuringian forests soil.",
    description: "Glass objects made in these glassworks today are often produced with so much perfection that the outcome of the artistic craft of glassblowing can often not be differenciated from indutrialized mass produced glass by pure perception.
    Bringing the hand into the center of the manufaction process, each glass blower leaves an individual mark by deforming the glass simply holding on to it with a heat resistant glove, that is typically used in the workshop. This imprint is a link to and trace of its unique manufacturing process and at the same time lets the user hold the glass easily in use. The series consists of a glass and a decanter, each a little different to another. This project was put into practice together with ELIAS Farbglashütte Lauscha, who also made it possible for us to work with  glassblowers in their workshop.
    This design is a collaboration with Maiella Di Donato and was realized by the Farbglashütte ELIAS Lauscha GmbH.
It can be purchased here.",
    category: "design",
    year: "2017"
    )
  project.user = user

  file = URI.open('https://manifestofpractice.com/wp-content/uploads/2019/01/Bildschirmfoto-2019-01-09-um-16.37.36-768x582.png')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  project.save!
end

1.times do |counter|

  project = Project.new(
    title: "quacko",
    introduction: "Inspired by the craftsmanship of thuringian glass blowers, Handwerker was created as a new interpretation of the traditional forest glass with its distinct green colour which is linked to the iron contents of the thuringian forests soil.",
    description: "Glass objects made in these glassworks today are often produced with so much perfection that the outcome of the artistic craft of glassblowing can often not be differenciated from indutrialized mass produced glass by pure perception.
    Bringing the hand into the center of the manufaction process, each glass blower leaves an individual mark by deforming the glass simply holding on to it with a heat resistant glove, that is typically used in the workshop. This imprint is a link to and trace of its unique manufacturing process and at the same time lets the user hold the glass easily in use. The series consists of a glass and a decanter, each a little different to another. This project was put into practice together with ELIAS Farbglashütte Lauscha, who also made it possible for us to work with  glassblowers in their workshop.
    This design is a collaboration with Maiella Di Donato and was realized by the Farbglashütte ELIAS Lauscha GmbH.
It can be purchased here.",
    category: "glass",
    year: "2017"
    )
  project.user = user

  file = URI.open('https://manifestofpractice.com/wp-content/uploads/2019/01/Bildschirmfoto-2019-01-09-um-16.37.36-768x582.png')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  project.save!
end

1.times do |counter|

  project = Project.new(
    title: "blabla",
    introduction: "Inspired by the craftsmanship of thuringian glass blowers, Handwerker was created as a new interpretation of the traditional forest glass with its distinct green colour which is linked to the iron contents of the thuringian forests soil.",
    description: "Glass objects made in these glassworks today are often produced with so much perfection that the outcome of the artistic craft of glassblowing can often not be differenciated from indutrialized mass produced glass by pure perception.
    Bringing the hand into the center of the manufaction process, each glass blower leaves an individual mark by deforming the glass simply holding on to it with a heat resistant glove, that is typically used in the workshop. This imprint is a link to and trace of its unique manufacturing process and at the same time lets the user hold the glass easily in use. The series consists of a glass and a decanter, each a little different to another. This project was put into practice together with ELIAS Farbglashütte Lauscha, who also made it possible for us to work with  glassblowers in their workshop.
    This design is a collaboration with Maiella Di Donato and was realized by the Farbglashütte ELIAS Lauscha GmbH.
It can be purchased here.",
    category: "glass",
    year: "2017"
    )
  project.user = user

  file = URI.open('https://manifestofpractice.com/wp-content/uploads/2019/01/Bildschirmfoto-2019-01-09-um-16.37.36-768x582.png')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  project.save!
end

1.times do |counter|

  project = Project.new(
    title: "tolles projetto",
    introduction: "Inspired by the craftsmanship of thuringian glass blowers, Handwerker was created as a new interpretation of the traditional forest glass with its distinct green colour which is linked to the iron contents of the thuringian forests soil.",
    description: "Glass objects made in these glassworks today are often produced with so much perfection that the outcome of the artistic craft of glassblowing can often not be differenciated from indutrialized mass produced glass by pure perception.
    Bringing the hand into the center of the manufaction process, each glass blower leaves an individual mark by deforming the glass simply holding on to it with a heat resistant glove, that is typically used in the workshop. This imprint is a link to and trace of its unique manufacturing process and at the same time lets the user hold the glass easily in use. The series consists of a glass and a decanter, each a little different to another. This project was put into practice together with ELIAS Farbglashütte Lauscha, who also made it possible for us to work with  glassblowers in their workshop.
    This design is a collaboration with Maiella Di Donato and was realized by the Farbglashütte ELIAS Lauscha GmbH.
It can be purchased here.",
    category: "glass",
    year: "2017"
    )
  project.user = user

  file = URI.open('https://manifestofpractice.com/wp-content/uploads/2019/01/Bildschirmfoto-2019-01-09-um-16.37.36-768x582.png')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  project.save!
end

1.times do |counter|

  project = Project.new(
    title: "superklasse",
    introduction: "Inspired by the craftsmanship of thuringian glass blowers, Handwerker was created as a new interpretation of the traditional forest glass with its distinct green colour which is linked to the iron contents of the thuringian forests soil.",
    description: "Glass objects made in these glassworks today are often produced with so much perfection that the outcome of the artistic craft of glassblowing can often not be differenciated from indutrialized mass produced glass by pure perception.
    Bringing the hand into the center of the manufaction process, each glass blower leaves an individual mark by deforming the glass simply holding on to it with a heat resistant glove, that is typically used in the workshop. This imprint is a link to and trace of its unique manufacturing process and at the same time lets the user hold the glass easily in use. The series consists of a glass and a decanter, each a little different to another. This project was put into practice together with ELIAS Farbglashütte Lauscha, who also made it possible for us to work with  glassblowers in their workshop.
    This design is a collaboration with Maiella Di Donato and was realized by the Farbglashütte ELIAS Lauscha GmbH.
It can be purchased here.",
    category: "glass",
    year: "2017"
    )
  project.user = user

  file = URI.open('https://manifestofpractice.com/wp-content/uploads/2019/01/Bildschirmfoto-2019-01-09-um-16.37.36-768x582.png')
  project.main_picture.attach(io: file, filename: "nes_#{counter}.png", content_type: 'image/png')

  project.save!
end
