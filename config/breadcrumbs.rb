crumb :root do
  link "Home", root_path
end

crumb :outer do
  link "Outer", outer_items_path
  parent :root
end

crumb :tops do
  link "Tops", tops_items_path
  parent :root
end

crumb :bottoms do
  link "Bottoms", bottoms_items_path
  parent :root
end

crumb :shoes do
  link "Shoes", shoes_items_path
  parent :root
end

crumb :goods do
  link "Goods", goods_items_path
  parent :root
end

crumb :black do
  link "Black", black_items_path
  parent :root
end

crumb :white do
  link "White", white_items_path
  parent :root
end

crumb :navy do
  link "Navy", navy_items_path
  parent :root
end

crumb :gray do
  link "Gray", gray_items_path
  parent :root
end

crumb :beige do
  link "Beige", beige_items_path
  parent :root
end

crumb :green do
  link "Green", green_items_path
  parent :root
end

crumb :other_color do
  link "Other Color", other_color_items_path
  parent :root
end

