def create_product_with_stock(name, price)
  product = Product.create! name: name, price: price
  Stock.create! product: product, quantity: 200
end

# noinspection RubyQuotedStringsInspection
create_product_with_stock "Bolacha Maria", 1.0
# noinspection RubyQuotedStringsInspection
create_product_with_stock "Omo Progress", 15.0
# noinspection RubyQuotedStringsInspection
create_product_with_stock "Bala de Goma", 0.85
# noinspection RubyQuotedStringsInspection
create_product_with_stock "Bola de Gude", 0.20
# noinspection RubyQuotedStringsInspection
create_product_with_stock "Pilha Alc. A", 3.50
