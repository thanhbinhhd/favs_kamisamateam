User.create!([
  {email: "admin@gmail.com", name: "Admin", role: "Admin",
    password: "12345678", password_confirmation: "12345678"},
  {email: "letattungtb@gmail.com", name: "Le Tung",
    password: "tung123", password_confirmation: "tung123"}
])
10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@gmail.com"
  password = "123456"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password)
end
puts "Create Account User"

Category.create!([
  {name: "野菜"},
  {name: "フルーツ"},
  {name: "米・雑穀"},
  {name: "花・茶"}
])
puts "Create Categories"

Product.create!([
  {name: "小松菜", image: "products/1.jpg", category_id: 1},
  {name: "チンゲン菜", image: "products/2.jpg", category_id: 1},
  {name: "つららラディッシュ", image: "products/3.jpg", category_id: 1},
  {name: "ニンジン", image: "products/4.jpg", category_id: 1},
  {name: "ベビーキャロット", image: "products/5.jpg", category_id: 1},
  {name: "黒ニンジン", image: "products/6.jpg", category_id: 1},
  {name: "ホワイトコーン(白くまコーン)", image: "products/7.jpg", category_id: 1},
  {name: "とうもろこし(黄＆白)", image: "products/8.jpg", category_id: 1},
  {name: "コシヒカリ(白米)", image: "products/9.jpg", category_id: 3},
  {name: "コシヒカリ(玄米)", image: "products/10.jpg", category_id: 3},
  {name: "新之助(白米)", image: "products/11.jpg", category_id: 3},
  {name: "ベビーキャロット", image: "products/5.jpg", category_id: 1},
  {name: "新之助(白米)", image: "products/12.jpg", category_id: 3},
  {name: "ヒノヒカリ(白米)", image: "products/13.jpg", category_id: 3},
  {name: "ヒノヒカリ(玄米)", image: "products/14.jpg", category_id: 3},
  {name: "ゆめぴりか(白米)", image: "products/15.jpg", category_id: 3},
  {name: "ななつぼし(白米)", image: "products/16.jpg", category_id: 3},
  {name: "ふっくりんこ(白米)", image: "products/17.jpg", category_id: 3},
  {name: "あきたこまち（白米）", image: "products/18.jpg", category_id: 3},
  {name: "あきたこまち（玄米）", image: "products/19.jpg", category_id: 3},
  {name: "松山三井(白米)", image: "products/20.jpg", category_id: 3},
  {name: "サラダからし菜", image: "products/21.jpg", category_id: 1},
  {name: "スイスチャード", image: "products/22.jpg", category_id: 1},
  {name: "だだちゃ豆", image: "products/23.jpg", category_id: 3},
  {name: "みさを大豆", image: "products/24.jpg", category_id: 3},
  {name: "鳴門金時", image: "products/25.jpg", category_id: 1},
  {name: "安納芋", image: "products/26.jpg", category_id: 1},
  {name: "紅はるか", image: "products/27.jpg", category_id: 1},
  {name: "紫芋", image: "products/28.jpg", category_id: 1},
  {name: "ブロッコリー", image: "products/29.jpg", category_id: 1},
  {name: "スティックセニョール", image: "products/30.jpg", category_id: 1},
  {name: "エンサイ(空心菜)", image: "products/31.jpg", category_id: 1},
  {name: "温州みかん", image: "products/32.jpg", category_id: 2},
  {name: "いよかん", image: "products/33.jpg", category_id: 1},
  {name: "極早生みかん", image: "products/34.jpg", category_id: 2},
  {name: "里芋", image: "products/35.jpg", category_id: 1},
  {name: "つるのこ芋", image: "products/36.jpg", category_id: 1},
  {name: "なす", image: "products/37.jpg", category_id: 1},
  {name: "純白なす", image: "products/38.jpg", category_id: 1},
  {name: "長なす", image: "products/39.jpg", category_id: 1},
  {name: "ピーマン", image: "products/40.jpg", category_id: 1},
  {name: "プチピーマン", image: "products/41.jpg", category_id: 1},
  {name: "万願寺唐辛子", image: "products/42.jpg", category_id: 1},
  {name: "愛宕柿", image: "products/43.jpg", category_id: 2},
  {name: "イチジク", image: "products/44.jpg", category_id: 2},
  {name: "トマト", image: "products/45.jpg", category_id: 1},
  {name: "ミディトマト", image: "products/46.jpg", category_id: 1},
  {name: "ミニトマト", image: "products/47.jpg", category_id: 1},
    {name: "ゼリートマト", image: "products/48.jpg", category_id: 1},
  {name: "ピオーネ", image: "products/49.jpg", category_id: 2},
  {name: "シャインマスカット", image: "products/50.jpg", category_id: 2},
  {name: "パクチー", image: "products/51.jpg", category_id: 1},
  {name: "レモン", image: "products/52.jpg", category_id: 1},
  {name: "グリーンレモン", image: "products/53.jpg", category_id: 2},
  {name: "栗", image: "products/54.jpg", category_id: 2},
  {name: "マコモダケ", image: "products/55.jpg", category_id: 1},
  {name: "白ネギ", image: "products/56.jpg", category_id: 1},
  {name: "山の芋", image: "products/57.jpg", category_id: 1},
  {name: "黄美香メロン", image: "products/58.jpg", category_id: 2},
  {name: "ズッキーニ", image: "products/59.jpg", category_id: 1}
])
puts "Create Products"
