class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: "Outer"}, {id: 2, name: "Tops"},{id: 3, name: "Bottoms"},
    {id: 4, name: "Shoes"}, {id: 5, name: "Goods"}
  ]
end