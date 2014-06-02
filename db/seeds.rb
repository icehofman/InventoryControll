def create_product_with_stock(name, price)
  product = Product.create! name: name, price: price
  Stock.create! product: product, quantity: 200
end

create_product_with_stock "Bolacha Maria", 1.0
create_product_with_stock "Omo Progress", 15.0
create_product_with_stock "Bala de Goma", 0.85
create_product_with_stock "Bola de Gude", 0.20
create_product_with_stock "Pilha Alc. A", 3.50
