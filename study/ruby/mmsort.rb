# arr = [54,26,93,17,77,31,44,55,20]
# puts arr.chunk { |n|
#   n % 2 == 1}


def mergesort(arr, p, r)
  while(p < r)
    q = ((p + r) / 2).floor
    mergesort(arr, p, q)
    mergesort(arr, q + 1, r)
    merge(arr, p, q, r)
  end
end

def merge(arr, p, q, r)
  m_arr = Array.new(arr.length)
  k = 0
  i = p
  j = q + 1
  while(i <= q and j <= r) do
    if(arr[i] < arr[j])
      m_arr[k + 1] = arr[i + 1]   
    else
      m_arr[k + 1] = arr[j + 1]
    end
  end
  
  while(i <= q) do
    m_arr[k + 1] = arr[i + 1]
  end
  
  while(j <= r) do
    m_arr[k + 1] = arr[j + 1]
  end

  for i in r.downto(p)
    k -= 1
    arr[i] = m_arr[k];
  end
end

arr = [3,4,1]
p = 0
r = arr.length
p mergesort(arr, p, r)
