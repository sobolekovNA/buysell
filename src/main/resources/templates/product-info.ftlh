<!DOCTYPE html>
<html>
<head>
    <title>Налетай покупай!</title>
</head>
<body>
<h1>Налетай покупай!</h1>
<hr>
<h4>Подробнее информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}"/><br><br>
</#list>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b>${product.author}<br>
<b>Номер телефона: </b>${product.user.phone}<br>
<hr>
<h3>Удалить товар</h3>
<form action="/product/delete/${id}" method="post">
    <input type="submit", value="Удалить товар"/>
</form>
</body>
</html>