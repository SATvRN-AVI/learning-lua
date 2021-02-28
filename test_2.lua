function Operate(a, b, operation)
    return operation(a, b)
end

c = Operate(10, 42, function(a, b) return a + b end)

print(c)

c = Operate(10, 42, function(a, b) return a * b end)

print(c)