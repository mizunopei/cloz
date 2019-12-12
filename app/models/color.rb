class Color < ActiveHash::Base
  self.data = [
    {id: 1, name: "Black"},{id: 2, name: "White"},{id: 3, name: "Navy"},
    {id: 4, name: "Gray"},{id:5, name: "Beige"} ,{id:6, name: "Green"}, {id: 7, name: "Other"}
  ]
end