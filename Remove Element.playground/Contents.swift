import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  guard !nums.isEmpty else { return 0 }

  var index = 0
  
  for num in nums {
    if num != val {
      nums[index] = num
      index += 1
    }
  }

  return index
}

var nums = [3,2,2,3], val = 3

let newLength = removeElement(&nums, val)
print(newLength) // Output: 2
print(nums) // Output: [2, 2, _, _] (the last two elements are not important)

nums = [0,1,2,2,3,0,4,2]
val = 2

let newLength2 = removeElement(&nums, val)
print(newLength2) // Output: 5
print(nums) // Output: [0, 1, 3, 0, 4, _, _, _] (the last three elements are not important)
