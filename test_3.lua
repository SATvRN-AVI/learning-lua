function Factorial(number)
    if number == 0 then
        return 1
    else
        return number * Factorial(number - 1)
    end
end
