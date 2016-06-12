#creating function for bynary search
#creating function to find the common elemesnts in the two vectors: 1) sorting the longets array 2) and loop over the short array to search for the common elements (using binary search)
def binary_search(arr,target)
  arr=arr.sort
  low=0
  high=arr.length-1
  while (low<=high)
    mid=((low+high)/2).floor
    if (arr[mid] > target)
      high=mid-1
    elsif (arr[mid] < target)
      low=mid+1
    else
      return arr[mid]
    end
  end
  return "value not found" 
end

def find_commonvalues(arr1,arr2)
  arr1=arr1.uniq
  arr2=arr2.uniq
  if (arr1.length<=arr2.length)
    arr_to_iterate=arr1
    arr_to_search=arr2
  else
    arr_to_iterate=arr2
    arr_to_search=arr1
  end
  result=[]
  for target in arr_to_iterate
    comm_value=binary_search(arr_to_search,target)
    if (comm_value != "value not found")
      result<<comm_value
    end
  end
  if (result.length>0)
    return result
  else
    return "no common values"
  end
end

# add hash method
def find_commonvalues_hash(arr1,arr2)
  arr1=arr1.uniq
  arr2=arr2.uniq
  if (arr1.length<=arr2.length)
    arr_to_iterate=arr1
    arr_to_search=arr2
  else
    arr_to_iterate=arr2
    arr_to_search=arr1
  end
  hash=arr_to_search.zip(arr_to_search).to_h
  result=[]
  for num in arr_to_iterate
    result<<num if (hash[num]!=nil)
  end
  return result
end