<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Налетай покупай!</h1>
<hr>
<h4>Подробнее информация о товаре</h4>
<img src="/image/${product.images.get(0)}" height="60px"/><br><br>
<img src="/image/${product.images.get(1)?if_exists}" height="60px"/><br><br>
<img src="/image/${product.images.get(2)?if_exists}" height="60px"/><br><br>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b>${product.author}<br>
<hr>
<h3>Удалить товар</h3>
<form action="/product/delete/${id}" method="post">
    <input type="submit", value="Удалить товар"/>
</form>
</body>
</html>