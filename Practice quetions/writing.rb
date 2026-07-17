arr=[2,5,3,2,7,8,5,9,7]
n=arr.length
duplicate=[]
for i in 0...n-1
    count=0
    j=i+1
    while j<n
        if arr[i]==arr[j]
            count+=1
        end
        j+=1
    end
    if count>0
        duplicate<< arr[i]
    end
end
print duplicate