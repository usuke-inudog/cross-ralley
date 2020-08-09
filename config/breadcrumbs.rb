crumb :root do
  link "Cross×Ralley", root_path
end

crumb :mypage do
  link "マイページ", user_path(current_user.id)
end

crumb :artcles do
  link "記事一覧", artcles_path
end

crumb :artcle do |artcle|
  artcle = Artcle.find(params[:id])
  link "#{artcle.title}", artcle_path
  parent :artcles
end

crumb :artcle_search do |artcle|
  link "記事検索結果", search_artcles_path
  parent :artcles
end

crumb :schedule do
  link "対戦予定一覧", user_schedules_path(current_user.id)
  parent :mypage
end
