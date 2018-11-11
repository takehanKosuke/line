User.create(
  name: '山田太郎',
  email: 'test1@test.com',
  image: File.open("./public/images/men1.jpg"),
  password: '111111'
)

User.create(
  name: '伊藤優作',
  email: 'test2@test.com',
  image: File.open("./public/images/men2.jpg"),
  password: '111111'
)

User.create(
  name: '中田高貴',
  email: 'test3@test.com',
  image: File.open("./public/images/men3.jpg"),
  password: '111111'
)

User.create(
  name: '安藤さな',
  email: 'test4@test.com',
  image: File.open("./public/images/women1.jpg"),
  password: '111111'
)

User.create(
  name: '渡辺優香',
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

InappropriateWord.create (
  [
    {
      word: 'うざい'
    },
    {
      word: '死ね'
    },
    {
      word: '消えろ'
    },
    {
      word: 'きもい'
    }
  ]
)
