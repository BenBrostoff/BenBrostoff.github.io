numberArray = [1,2,3,4,5]

numberArray.map{ |i| i + 1 }  # [2, 3, 4, 5, 6]
numberArray # [1,2,3,4,5]

numberArray.map!{ |i| i + 1 }  # [2, 3, 4, 5, 6]
numberArray # [2,3,4,5,6]