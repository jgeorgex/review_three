## Review 3

Band pass filter

Soundwave upper and lower limits

Soundwave is an array integers

Input (Low/High) => Output <br>
[2], 1,3 => [2]<br>
[4], 5,6 => [5]<br>
[4], 1,3 => [3]<br>
[1,2,3,4], 1, 3 => [1,2,3,3] <br>
[10,7,8,5], 6, 9 => [9,7,8,6] <br>

nil => argument error "input soundwave is corrupt"

Max array = 44,000
Min array = 0
no "-" value integers provided
