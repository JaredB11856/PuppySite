Mother.create!(
    about: "about",
    main_image: "https://www.freepngimg.com/thumb/dog/10-dog-png-image.png"
  )

puts '1 Mother created'

Litter.create!(
    about: "This is our littlest Litter",
    main_image: "https://www.freepngimg.com/thumb/puppy/33435-9-siberian-husky-puppy-photos.png",
    mother_id: 1
  )
puts '1 Litter created'

Puppy.create!(
    about: "This is our littlest puppy. He's such a fiesty ",
    image_one: "https://www.freepngimg.com/thumb/puppy/33435-9-siberian-husky-puppy-photos.png",
    id: 1
  )

puts '1 Puppy created'