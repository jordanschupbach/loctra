
loctra = require('loctra')

c = loctra.Circle(10)
print(c.area(c))
print(c.perimeter(c))

x = loctra.DynArray(100)
for i = 0, 99 do
    x.set(x, i, math.random())
end

for i = 0, 99 do
    local value = x.get(x, i)
    print(value)
end


