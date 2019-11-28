class Color < ActiveHash::Base
  self.data = [
    {id: 1, name: "Black"},{id: 2, name: "White"},{id: 3, name: "Navy"},
    {id: 4, name: "Red"}, {id: 5, name: "Green"}, {id: 6, name: "Other"}
  ]
end