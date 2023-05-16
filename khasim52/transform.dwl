%dw 2.0
output application/json
var a = ["aa","bb","cc"]
var b = ["abc","xyz","qwe"]
/*Here I used map function to map the given the payload based on the desired output Requirement and then i have converted  Array of objects into single object with the help of Reduce function
and sorting the output purpose i have used orderBy function
*/

---
a  map {
    ($): b[$$]
} reduce ((i, a) -> i ++ a) orderBy ((value, key) -> key) 
