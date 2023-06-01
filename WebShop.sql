SELECT items.name, sellers.name
FROM items
INNER JOIN sellers ON sellers.id=items.sellerId WHERE sellers.rating > 4;