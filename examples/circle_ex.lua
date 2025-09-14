
loctra = require('loctra')

c = loctra.Circle(10)

print(c.area(c))
print(c.perimeter(c))
x = loctra.DynArray(100)
x.push_back(x, 1.1)
y = x.get(x, 1)
x.set(x, 1, 2.2)
print(y)
print(x.get(x, 1))
print(x)


