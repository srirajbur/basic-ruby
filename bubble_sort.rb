require "pry"
def bubble_sort(arr)

    arr.each do |num|
        
        for i in 0..arr.length-2 
            c = i+1
            case arr[i] <=> arr[c]
            when 1
                arr[i], arr[c] = arr[c], arr[i]
            else
                next
            end
        end

    end
    arr
end

bubble_sort([4,3,78,2,0,2,2])
