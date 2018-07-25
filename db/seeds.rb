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
  {name: "小松菜", image: File.open(Rails.root + "public/uploads/products/1.jpg", category_id: 1)},
  {name: "チンゲン菜", image: File.open(Rails.root + "public/uploads/products/2.jpg", category_id: 1)},
  {name: "つららラディッシュ", image: File.open(Rails.root + "public/uploads/products/3.jpg", category_id: 1)},
  {name: "ニンジン", image: File.open(Rails.root + "public/uploads/products/4.jpg", category_id: 1)},
  {name: "ベビーキャロット", image: File.open(Rails.root + "public/uploads/products/5.jpg"), category_id: 1},
  {name: "黒ニンジン", image: File.open(Rails.root + "public/uploads/products/6.jpg"), category_id: 1},
  {name: "ホワイトコーン(白くまコーン)", image: File.open(Rails.root + "public/uploads/products/7.jpg"), category_id: 1},
  {name: "とうもろこし(黄＆白)", image: File.open(Rails.root + "public/uploads/products/8.jpg"), category_id: 1},
  {name: "コシヒカリ(白米)", image: File.open(Rails.root + "public/uploads/products/9.jpg"), category_id: 3},
  {name: "コシヒカリ(玄米)", image: File.open(Rails.root + "public/uploads/products/10.jpg"), category_id: 3},
  {name: "新之助(白米)", image: File.open(Rails.root + "public/uploads/products/11.jpg"), category_id: 3},
  {name: "ベビーキャロット", image: File.open(Rails.root + "public/uploads/products/5.jpg"), category_id: 1},
  {name: "新之助(白米)", image: File.open(Rails.root + "public/uploads/products/12.jpg"), category_id: 3},
  {name: "ヒノヒカリ(白米)", image: File.open(Rails.root + "public/uploads/products/13.jpg"), category_id: 3},
  {name: "ヒノヒカリ(玄米)", image: File.open(Rails.root + "public/uploads/products/14.jpg"), category_id: 3},
  {name: "ゆめぴりか(白米)", image: File.open(Rails.root + "public/uploads/products/15.jpg"), category_id: 3},
  {name: "ななつぼし(白米)", image: File.open(Rails.root + "public/uploads/products/16.jpg"), category_id: 3},
  {name: "ふっくりんこ(白米)", image: File.open(Rails.root + "public/uploads/products/17.jpg"), category_id: 3},
  {name: "あきたこまち（白米）", image: File.open(Rails.root + "public/uploads/products/18.jpg"), category_id: 3},
  {name: "あきたこまち（玄米）", image: File.open(Rails.root + "public/uploads/products/19.jpg"), category_id: 3},
  {name: "松山三井(白米)", image: File.open(Rails.root + "public/uploads/products/20.jpg"), category_id: 3},
  {name: "サラダからし菜", image: File.open(Rails.root + "public/uploads/products/21.jpg"), category_id: 1},
  {name: "スイスチャード", image: File.open(Rails.root + "public/uploads/products/22.jpg"), category_id: 1},
  {name: "だだちゃ豆", image: File.open(Rails.root + "public/uploads/products/23.jpg"), category_id: 3},
  {name: "みさを大豆", image: File.open(Rails.root + "public/uploads/products/24.jpg"), category_id: 3},
  {name: "鳴門金時", image: File.open(Rails.root + "public/uploads/products/25.jpg"), category_id: 1},
  {name: "安納芋", image: File.open(Rails.root + "public/uploads/products/26.jpg"), category_id: 1},
  {name: "紅はるか", image: File.open(Rails.root + "public/uploads/products/27.jpg"), category_id: 1},
  {name: "紫芋", image: File.open(Rails.root + "public/uploads/products/28.jpg"), category_id: 1},
  {name: "ブロッコリー", image: File.open(Rails.root + "public/uploads/products/29.jpg"), category_id: 1},
  {name: "スティックセニョール", image: File.open(Rails.root + "public/uploads/products/30.jpg"), category_id: 1},
  {name: "エンサイ(空心菜)", image: File.open(Rails.root + "public/uploads/products/31.jpg"), category_id: 1},
  {name: "温州みかん", image: File.open(Rails.root + "public/uploads/products/32.jpg"), category_id: 2},
  {name: "いよかん", image: File.open(Rails.root + "public/uploads/products/33.jpg"), category_id: 1},
  {name: "極早生みかん", image: File.open(Rails.root + "public/uploads/products/34.jpg"), category_id: 2},
  {name: "里芋", image: File.open(Rails.root + "public/uploads/products/35.jpg"), category_id: 1},
  {name: "つるのこ芋", image: File.open(Rails.root + "public/uploads/products/36.jpg"), category_id: 1},
  {name: "なす", image: File.open(Rails.root + "public/uploads/products/37.jpg"), category_id: 1},
  {name: "純白なす", image: File.open(Rails.root + "public/uploads/products/38.jpg"), category_id: 1},
  {name: "長なす", image: File.open(Rails.root + "public/uploads/products/39.jpg"), category_id: 1},
  {name: "ピーマン", image: File.open(Rails.root + "public/uploads/products/40.jpg"), category_id: 1},
  {name: "プチピーマン", image: File.open(Rails.root + "public/uploads/products/41.jpg"), category_id: 1},
  {name: "万願寺唐辛子", image: File.open(Rails.root + "public/uploads/products/42.jpg"), category_id: 1},
  {name: "愛宕柿", image: File.open(Rails.root + "public/uploads/products/43.jpg"), category_id: 2},
  {name: "イチジク", image: File.open(Rails.root + "public/uploads/products/44.jpg"), category_id: 2},
  {name: "トマト", image: File.open(Rails.root + "public/uploads/products/45.jpg"), category_id: 1},
  {name: "ミディトマト", image: File.open(Rails.root + "public/uploads/products/46.jpg"), category_id: 1},
  {name: "ミニトマト", image: File.open(Rails.root + "public/uploads/products/47.jpg"), category_id: 1},
    {name: "ゼリートマト", image: File.open(Rails.root + "public/uploads/products/48.jpg"), category_id: 1},
  {name: "ピオーネ", image: File.open(Rails.root + "public/uploads/products/49.jpg"), category_id: 2},
  {name: "シャインマスカット", image: File.open(Rails.root + "public/uploads/products/50.jpg"), category_id: 2},
  {name: "パクチー", image: File.open(Rails.root + "public/uploads/products/51.jpg"), category_id: 1},
  {name: "レモン", image: File.open(Rails.root + "public/uploads/products/52.jpg"), category_id: 1},
  {name: "グリーンレモン", image: File.open(Rails.root + "public/uploads/products/53.jpg"), category_id: 2},
  {name: "栗", image: File.open(Rails.root + "public/uploads/products/54.jpg"), category_id: 2},
  {name: "マコモダケ", image: File.open(Rails.root + "public/uploads/products/55.jpg"), category_id: 1},
  {name: "白ネギ", image: File.open(Rails.root + "public/uploads/products/56.jpg"), category_id: 1},
  {name: "山の芋", image: File.open(Rails.root + "public/uploads/products/57.jpg"), category_id: 1},
  {name: "黄美香メロン", image: File.open(Rails.root + "public/uploads/products/58.jpg"), category_id: 2},
  {name: "ズッキーニ", image: File.open(Rails.root + "public/uploads/products/59.jpg"), category_id: 1}
])
puts "Create Products"
