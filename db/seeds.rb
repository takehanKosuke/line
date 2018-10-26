User.create(
  name: 'test1',
  email: 'test1@test.com',
  image: File.open("./public/images/men1.jpg"),
  password: '111111'
)

User.create(
  name: 'test2',
  email: 'test2@test.com',
  image: File.open("./public/images/men2.jpg"),
  password: '111111'
)

User.create(
  name: 'test3',
  email: 'test3@test.com',
  image: File.open("./public/images/men3.jpg"),
  password: '111111'
)

User.create(
  name: 'tes4',
  email: 'test4@test.com',
  image: File.open("./public/images/women1.jpg"),
  password: '111111'
)

User.create(
  name: 'tes5',
  email: 'test5@test.com',
  image: File.open("./public/images/women2.jpg"),
  password: '111111'
)

Room.create(
  last_message_at: '2018-10-26 13:00:00'
)

Room.create(
  last_message_at: '2018-10-26 14:00:00'
)

Room.create(
  last_message_at: '2018-10-26 15:00:00'
)

UserRoom.create(
  user_id: 1,
  room_id: 1
)

UserRoom.create(
  user_id: 2,
  room_id: 1
)

UserRoom.create(
  user_id: 1,
  room_id: 2
)

UserRoom.create(
  user_id: 3,
  room_id: 2
)

UserRoom.create(
  user_id: 1,
  room_id: 3
)

UserRoom.create(
  user_id: 4,
  room_id: 3
)
