from MulLayer import MulLayer
from AddLayer import AddLayer

apple = 100
apple_num=2
tax=1.1
mandarin = 150
mandarin_num=3

#계층들
mul_apple_layer=MulLayer()
mul_tax_layer=MulLayer()
mul_mandarin_layer=MulLayer()
add_fruit_layer=AddLayer()

#순전파
apple_price=mul_apple_layer.forward(apple,apple_num)
mandarin_price=mul_mandarin_layer.forward(mandarin,mandarin_num)
fruits_price=add_fruit_layer.forward(apple_price,mandarin_price)
price = mul_tax_layer.forward(fruits_price,tax)
print(price)
#역전파
dprice=1
dfruits_price,dtax=mul_tax_layer.backward(dprice)
dapple_price,dmandarin_price=add_fruit_layer.backward(dfruits_price)
dapple,dapple_num=mul_apple_layer.backward(dapple_price)
dmandarin,dmandarin_num=mul_mandarin_layer.backward(dmandarin_price)

print(dapple,dapple_num,dtax)
print(dmandarin,dmandarin_num,dtax)
