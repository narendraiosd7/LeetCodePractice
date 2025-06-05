import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
  guard !nums.isEmpty else { return 0 }
  guard nums.count > 1 else { return 1 }
  
  var uniqueElementsCount = 1
  var lastUniqueElement = nums[0]
  
  for i in 1..<nums.count {
    if nums[i] != lastUniqueElement {
      uniqueElementsCount += 1
      lastUniqueElement = nums[i]
      nums[uniqueElementsCount - 1] = lastUniqueElement
    }
  }
  
  return uniqueElementsCount
}

var nums = [1, 1, 2]
let newLength = removeDuplicates(&nums)
print(newLength) // Output: 2
print(nums) // Output: [1, 2, _] (the last element is not important)

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
let newLength2 = removeDuplicates(&nums)
print(newLength2) // Output: 5
print(nums) // Output: [0, 1, 2, 3, 4, _, _, _, _, _] (the last five elements are not important)
 
nums = [1, 2, 3, 4, 5]
let newLength3 = removeDuplicates(&nums)
print(newLength3) // Output: 5
print(nums) // Output: [1, 2, 3, 4, 5] (no duplicates)

nums = [1, 1, 1, 1, 1]
let newLength4 = removeDuplicates(&nums)
print(newLength4) // Output: 1
print(nums) // Output: [1, _, _, _, _] (the last four elements are not important)

nums = []
let newLength5 = removeDuplicates(&nums)
print(newLength5) // Output: 0
print(nums) // Output: [] (empty array)

nums = [1]
let newLength6 = removeDuplicates(&nums)
print(newLength6) // Output: 1
print(nums) // Output: [1] (single element array)

nums = [1, 2, 2, 3, 4, 4, 5]
let newLength7 = removeDuplicates(&nums)
print(newLength7) // Output: 5
print(nums) // Output: [1, 2, 3, 4, 5, _, _, _] (the last three elements are not important)

nums = [1, 1, 2, 3, 3, 4]
let newLength8 = removeDuplicates(&nums)
print(newLength8) // Output: 4
print(nums) // Output: [1, 2, 3, 4, _, _, _] (the last three elements are not important)

