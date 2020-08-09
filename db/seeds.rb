# users
# テスト用アカウント(id:1)
User.create(nickname: "sample999", email: "sample999@sample.com", password: "123456")
# 記事いっぱい投稿するマン(id:2)
User.create(nickname: "記事いっぱい投稿するマン", email: "kiji-ippai@sample.com", password: "123456")
# コメントいっぱいするマン(id:3)
User.create(nickname: "コメントいっぱいするマン", email: "comment-ippai@sample.com", password: "123456")
# 試合いっぱい誘うマン(id:4)
User.create(nickname: "試合いっぱい誘うマン", email: "sasou-ippai@sample.com", password: "123456")
# 試合いっぱい誘われるマン(id:5)
User.create(nickname: "試合いっぱい誘われるマン", email: "sasowareru-ippai@sample.com", password: "123456")
# フットワーク神(id:6)
User.create(nickname: "フットワーク神", email: "footwork-kami@sample.com", password: "123456")
# スタミナ神(id:7)
User.create(nickname: "スタミナ神", email: "stamina-kami@sample.com", password: "123456")
# サーブ神(id:8)
User.create(nickname: "サーブ神", email: "service-kami@sample.com", password: "123456")
# リターン神(id:9)
User.create(nickname: "リターン神", email: "return-kami@sample.com", password: "123456")
# ボレー神(id:10)
User.create(nickname: "ボレー神", email: "volley-kami@sample.com", password: "123456")
# フォアハンド神(id:11)
User.create(nickname: "フォアハンド神", email: "forehand-kami@sample.com", password: "123456")
# バックハンド神(id:12)
User.create(nickname: "バックハンド神", email: "backhand-kami@sample.com", password: "123456")
# メンタル神(id:13)
User.create(nickname: "メンタル神", email: "mental-kami@sample.com", password: "123456")
# バランス良いマン(id:14)
User.create(nickname: "バランス良いマン", email: "balance-good@sample.com", password: "123456")
# まだまだマン(id:15)
User.create(nickname: "まだまだマン", email: "madamada@sample.com", password: "123456")
# profiles
Profile.create(age: "10代", gender: "男性", introduction: "どうも！記事いっぱい投稿するマンです！頑張っていっぱい記事投稿します！", address: "東京都", user_id: 2)
Profile.create(age: "10代", gender: "男性", introduction: "どうも！コメントいっぱいするマンです。頑張っていっぱいコメントします！", address: "埼玉県", user_id: 3)
Profile.create(age: "30代", gender: "男性", introduction: "どうも！試合いっぱい誘うマンです。頑張っていっぱい試合に誘います！", address: "千葉県", user_id: 4)
Profile.create(age: "20代", gender: "男性", introduction: "どうも！試合いっぱい誘われるマンです。いっぱい試合に誘ってください！", address: "千葉県", user_id: 5)
Profile.create(age: "秘密", gender: "秘密", introduction: "リズムに乗るぜ", address: "東京都", user_id: 6)
Profile.create(age: "秘密", gender: "秘密", introduction: "4つの肺を持つ男", address: "東京都", user_id: 7)
Profile.create(age: "秘密", gender: "秘密", introduction: "ウォーターフォール、いい名前だ", address: "東京都", user_id: 8)
Profile.create(age: "秘密", gender: "秘密", introduction: "リターンはまかせろ", address: "東京都", user_id: 9)
Profile.create(age: "秘密", gender: "秘密", introduction: "天才的だろい？", address: "東京都", user_id: 10)
Profile.create(age: "秘密", gender: "秘密", introduction: "波動球！", address: "東京都", user_id: 11)
Profile.create(age: "秘密", gender: "秘密", introduction: "ブラックジャックナイフ！", address: "東京都", user_id: 12)
Profile.create(age: "秘密", gender: "秘密", introduction: "鋼のメンタル", address: "東京都", user_id: 13)
Profile.create(age: "秘密", gender: "秘密", introduction: "バランス良き", address: "東京都", user_id: 14)
Profile.create(age: "秘密", gender: "秘密", introduction: "まだまだだね", address: "東京都", user_id: 15)
# userstatuses
Userstatus.create(rate: 1600, footwork: 30, stamina: 30, service: 30, return: 30, volley: 30, forehand: 30, backhand: 30, mental: 30, user_id: 2)
Userstatus.create(rate: 1600, footwork: 30, stamina: 30, service: 30, return: 30, volley: 30, forehand: 30, backhand: 30, mental: 30, user_id: 3)
Userstatus.create(rate: 1600, footwork: 30, stamina: 30, service: 30, return: 30, volley: 30, forehand: 30, backhand: 30, mental: 30, user_id: 4)
Userstatus.create(rate: 1600, footwork: 30, stamina: 30, service: 30, return: 30, volley: 30, forehand: 30, backhand: 30, mental: 30, user_id: 5)
Userstatus.create(rate: 1600, footwork: 100, stamina: 50, service: 50, return: 50, volley: 50, forehand: 50, backhand: 50, mental: 50, user_id: 6)
Userstatus.create(rate: 1600, footwork: 50, stamina: 100, service: 50, return: 50, volley: 50, forehand: 50, backhand: 50, mental: 50, user_id: 7)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 100, return: 50, volley: 50, forehand: 50, backhand: 50, mental: 50, user_id: 8)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 50, return: 100, volley: 50, forehand: 50, backhand: 50, mental: 50, user_id: 9)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 50, return: 50, volley: 100, forehand: 50, backhand: 50, mental: 50, user_id: 10)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 50, return: 50, volley: 50, forehand: 100, backhand: 50, mental: 50, user_id: 11)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 50, return: 50, volley: 50, forehand: 50, backhand: 100, mental: 50, user_id: 12)
Userstatus.create(rate: 1600, footwork: 50, stamina: 50, service: 50, return: 50, volley: 50, forehand: 50, backhand: 50, mental: 100, user_id: 13)
Userstatus.create(rate: 1600, footwork: 80, stamina: 80, service: 80, return: 80, volley: 80, forehand: 80, backhand: 80, mental: 80, user_id: 14)
Userstatus.create(rate: 1600, footwork: 60, stamina: 60, service: 60, return: 60, volley: 60, forehand: 60, backhand: 60, mental: 60, user_id: 15)
# artcles
Artcle.create(title: "テスト記事1", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活1日目。今日は18時間素振りをしました！", image:"", user_id: 2)
Artcle.create(title: "テスト記事2", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活2日目。今日は20時間走り込みをしました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事3", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活3日目。今日は10000本サーブを打ちました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事4", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活4日目。今日はサーブが音速を超えました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事5", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活5日目。今日は23時間壁打ちしました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事6", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活6日目。今日は初めて試合しました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事7", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活7日目。今日はラケットを新調しました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事8", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活8日目。今日はボールを5球同時にラリー練習しました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事9", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活9日目。今日はコート上にブラックホールを発生させました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事10", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活10日目。今日は相手の五感を奪う練習をしました。", image: "", user_id: 2)
Artcle.create(title: "テスト記事11", text: "どうも！記事いっぱい投稿するマンです！0から始めるテニス生活11日目。今日は身長が400cmになりました。", image: "", user_id: 2)
# comments
Comment.create(user_id: 3, artcle_id: 1, comment: "振りすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 2, comment: "走りすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 3, comment: "打ちすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 4, comment: "速すぎんだろ…")
Comment.create(user_id: 3, artcle_id: 5, comment: "やりすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 6, comment: "準備万端すぎんだろ…")
Comment.create(user_id: 3, artcle_id: 7, comment: "新しすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 8, comment: "多すぎんだろ…")
Comment.create(user_id: 3, artcle_id: 9, comment: "ヤバすぎんだろ…")
Comment.create(user_id: 3, artcle_id: 10, comment: "凶悪すぎんだろ…")
Comment.create(user_id: 3, artcle_id: 11, comment: "デカ過ぎんだろ…")
Comment.create(user_id: 3, artcle_id: 11, comment: "新テ○プリかよ")
# groups
Group.create(group_name: "テスト用グループ")
# group_users
GroupUser.create(group_id: 1, user_id: 1)
GroupUser.create(group_id: 1, user_id: 2)
GroupUser.create(group_id: 1, user_id: 3)
GroupUser.create(group_id: 1, user_id: 4)
GroupUser.create(group_id: 1, user_id: 5)
GroupUser.create(group_id: 1, user_id: 6)
GroupUser.create(group_id: 1, user_id: 7)
GroupUser.create(group_id: 1, user_id: 8)
GroupUser.create(group_id: 1, user_id: 9)
GroupUser.create(group_id: 1, user_id: 10)
GroupUser.create(group_id: 1, user_id: 11)
GroupUser.create(group_id: 1, user_id: 12)
GroupUser.create(group_id: 1, user_id: 13)
GroupUser.create(group_id: 1, user_id: 14)
GroupUser.create(group_id: 1, user_id: 15)
# messages
Message.create(text: "こんにちは！", group_id: 1, user_id: 4)
Message.create(text: "初めまして！", group_id: 1, user_id: 5)
Message.create(text: "こんちわ！", group_id: 1, user_id: 2)
Message.create(text: "よろー", group_id: 1, user_id: 3)
Message.create(text: "試合やりましょう", group_id: 1, user_id: 4)
Message.create(text: "いいですよ", group_id: 1, user_id: 5)
# matchings
# 誘うマン(id:4)から見て
# 未承認リスト
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "2030-08-19", scheduled_time: "12:00:00", place: "有明コロシアム", response_deadline: "2030-08-03", status: "申込中")
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "2030-08-28", scheduled_time: "12:00:00", place: "有明コロシアム", response_deadline: "2030-08-01", status: "申込中")
# 承認待ち
Matching.create(host_user_id: 5,guest_user_id: 4, match_type: "試合", scheduled_date: "2030-08-11", scheduled_time: "16:00:00", place: "有明コロシアム", response_deadline: "2030-08-03", status: "申込中")
Matching.create(host_user_id: 5,guest_user_id: 4, match_type: "試合", scheduled_date: "2030-08-20", scheduled_time: "16:00:00", place: "有明コロシアム", response_deadline: "2030-08-02", status: "申込中")
# 対戦予定
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "2030-08-03", scheduled_time: "12:00:00", place: "有明コロシアム", response_deadline: "2030-08-01", status: "承認済")
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "2030-08-11", scheduled_time: "10:00:00", place: "有明コロシアム", response_deadline: "2030-08-03", status: "承認済")
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "2030-08-26", scheduled_time: "15:00:00", place: "有明コロシアム", response_deadline: "2030-08-15", status: "承認済")
# 評価待ち
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1600-10-21", scheduled_time: "12:00:00", place: "関ヶ原", response_deadline: "1600-08-01", status: "承認済")
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1560-06-12", scheduled_time: "12:00:00", place: "桶狭間", response_deadline: "1560-06-01", status: "承認済")
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1600-10-21", scheduled_time: "12:00:00", place: "関ヶ原", response_deadline: "1600-08-01", status: "承認済")
# 完了リスト
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1612-05-13", scheduled_time: "12:00:00", place: "巌流島", response_deadline: "1612-04-01", status: "承認済", completed_host_user_id: 4, completed_guest_user_id: 5)
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1868-01-27", scheduled_time: "12:00:00", place: "上鳥羽", response_deadline: "1868-01-12", status: "承認済", completed_host_user_id: 4, completed_guest_user_id: 5)
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1575-06-29", scheduled_time: "12:00:00", place: "設楽原", response_deadline: "1575-05-29", status: "承認済", completed_host_user_id: 4, completed_guest_user_id: 5)
# 回答期限切れ
Matching.create(host_user_id: 4,guest_user_id: 5, match_type: "試合", scheduled_date: "1864-07-08", scheduled_time: "12:00:00", place: "池田屋", response_deadline: "1864-07-08", status: "申請中")
# favorites
Favorite.create(user_id: 3,artcle_id: 4)
Favorite.create(user_id: 4,artcle_id: 4)
Favorite.create(user_id: 5,artcle_id: 4)
Favorite.create(user_id: 6,artcle_id: 4)
Favorite.create(user_id: 7,artcle_id: 4)
Favorite.create(user_id: 8,artcle_id: 4)
Favorite.create(user_id: 9,artcle_id: 4)
Favorite.create(user_id: 10,artcle_id: 4)
Favorite.create(user_id: 11,artcle_id: 4)
Favorite.create(user_id: 12,artcle_id: 4)
Favorite.create(user_id: 13,artcle_id: 4)
Favorite.create(user_id: 14,artcle_id: 4)
Favorite.create(user_id: 15,artcle_id: 4)
Favorite.create(user_id: 3,artcle_id: 6)
Favorite.create(user_id: 5,artcle_id: 6)
Favorite.create(user_id: 6,artcle_id: 6)
Favorite.create(user_id: 7,artcle_id: 6)
Favorite.create(user_id: 8,artcle_id: 6)
Favorite.create(user_id: 9,artcle_id: 6)
Favorite.create(user_id: 10,artcle_id: 6)
Favorite.create(user_id: 11,artcle_id: 6)
Favorite.create(user_id: 12,artcle_id: 6)
Favorite.create(user_id: 13,artcle_id: 6)
Favorite.create(user_id: 14,artcle_id: 6)
Favorite.create(user_id: 15,artcle_id: 6)
Favorite.create(user_id: 3,artcle_id: 3)
Favorite.create(user_id: 4,artcle_id: 3)
Favorite.create(user_id: 5,artcle_id: 3)
Favorite.create(user_id: 8,artcle_id: 3)
Favorite.create(user_id: 9,artcle_id: 3)
Favorite.create(user_id: 10,artcle_id: 3)
Favorite.create(user_id: 11,artcle_id: 3)
Favorite.create(user_id: 12,artcle_id: 3)
Favorite.create(user_id: 13,artcle_id: 3)
Favorite.create(user_id: 14,artcle_id: 3)
Favorite.create(user_id: 15,artcle_id: 3)
Favorite.create(user_id: 3,artcle_id: 7)
Favorite.create(user_id: 4,artcle_id: 7)
Favorite.create(user_id: 5,artcle_id: 7)
Favorite.create(user_id: 6,artcle_id: 7)
Favorite.create(user_id: 7,artcle_id: 7)
Favorite.create(user_id: 8,artcle_id: 7)
Favorite.create(user_id: 9,artcle_id: 7)
Favorite.create(user_id: 10,artcle_id: 7)
Favorite.create(user_id: 11,artcle_id: 7)
Favorite.create(user_id: 15,artcle_id: 7)
Favorite.create(user_id: 3,artcle_id: 9)
Favorite.create(user_id: 4,artcle_id: 9)
Favorite.create(user_id: 5,artcle_id: 9)
Favorite.create(user_id: 13,artcle_id: 9)
Favorite.create(user_id: 14,artcle_id: 9)
Favorite.create(user_id: 15,artcle_id: 9)
Favorite.create(user_id: 5,artcle_id: 11)
Favorite.create(user_id: 13,artcle_id: 11)
Favorite.create(user_id: 14,artcle_id: 11)
Favorite.create(user_id: 15,artcle_id: 11)
