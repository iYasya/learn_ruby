def measure (n=1)
    sum = 0
	
    n.times do
        start = Time.now
        yield
        finish = Time.now
        sum += finish - start
    end
 
    sum / n
end