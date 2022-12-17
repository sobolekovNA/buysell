<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>Налетай покупай!</h1>
<hr>
<h4>Подробнее информация о товаре</h4>
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