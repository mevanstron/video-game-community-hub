user1 = User.create(email: "m@m.com", password: "test333", password_confirmation: "test333", nickname: "Mikey")
user2 = User.create(email: "g@g.com", password: "test333", password_confirmation: "test333", nickname: "Gena")

v_game1 = VideoGame.create(title: "Final Fantasy VII", console: "Playstation", year_released: "1997")
v_game2 = VideoGame.create(title: "Super Smash Bros.", console: "Nintendo 64", year_released: "1999")
v_game3 = VideoGame.create(title: "Halo", console: "Xbox", year_released: "2001")

u_v_game1 = UserVideoGame.create(user_id: 1, video_game_id: 1)
u_v_game2 = UserVideoGame.create(user_id: 1, video_game_id: 2)
u_v_game3 = UserVideoGame.create(user_id: 2, video_game_id: 1)
