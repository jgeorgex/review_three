## Review 3 - Band pass filter

The challenge is to produce a "Band Pass Filter" program that takes in three arguments.<br>

1.  A soundwave represented by an array of integers.
2.  An integer representing the low of the range.
3.  An integer represnting the high of the range.

If any of the integers within the soundwave are below the low of the range then the program should change the integer to be the low of the range.

If any of the integers within the soundwave are above the high of the range then the program should change the integer to be the high of the range.

## Example Inputs and Outputs

Input (Soundwave/Low/High) => Output(Soundwave) <br>
[2], 1,3 => [2]<br>
[4], 5,6 => [5]<br>
[4], 1,3 => [3]<br>
[1,2,3,4], 1, 3 => [1,2,3,3] <br>
[10,7,8,5], 6, 9 => [9,7,8,6] <br>

## Other Information

nil => argument error "input soundwave is corrupt" <br>
Max array = 44,000 <br>
Min array = 0 <br>
no "-" value integers provided <br>
