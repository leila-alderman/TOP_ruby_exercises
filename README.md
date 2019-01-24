# The Odin Project Ruby Exercises

Each of these projects used test-driven development (TDD) to solve a series of exercises. These exercises are all from various lessons in [The Odin Project](www.theodinproject.com) curriculum.

### 1. Caesar cipher
A [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher) is one of the oldest and most widely known encryption techniques. It's a type of substitution cipher in which each letter is replaced by a different letter a set number of positions away in the alphabet. [For example](https://www.youtube.com/watch?v=36xNpbosfTY), with a right shift of 3, "D" becomes "G", and "L" becomes "O". 

This exercise implements a Caesar cipher that takes in a string and a shift factor, which can be negative and/or greater than 26, and outputs the modified string.

~~~bash
 > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
~~~

### 2. Stock picker
This exercise implements a `stock_picker` method that takes in an array of fictional daily stock prices and returns the pair of days representing the best day to buy and the best day to sell. 

~~~bash
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
~~~

### 3. Substrings
This exercise implements a `substring` method that takes a word or phrase as the first argument and an array of valid substrings (called the dictionary) as the second argument. This method returns a hash that lists each substring (case insensitive) found in the original string and the number of times it was found.

~~~bash
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }

  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
~~~

### 4. Bubble sort
[Bubble sort](https://en.wikipedia.org/wiki/Bubble_sort) is a simple sorting algorithm that steps through a list, compares two adjacent values, and swaps their position if necessary. The list is passed through in this manner until the list is sorted. 

This exercise implements two methods: `bubble_sort` and `bubble_sort_by`, which accepts a block that specifies the sorting criteria. Both of these methods contain a small optimization that declares sorting to be done if no values are swapped during a pass.

~~~bash
  > bubble_sort([4,3,78,2,0,2])
  => [0,2,2,3,4,78]

  > bubble_sort_by(["hi","hello","hey"]) do |left,right|
  >   left.length - right.length
  > end
  => ["hi", "hey", "hello"]
~~~

### 5. Enumerable methods
This exercise rebuilds many of the classic `Enumerable` methods:

 - `#my_each`
 - `#my_each_with_index`
 - `#my_select`
 - `#my_all?`
 - `#my_any?`
 - `#my_none?`
 - `#my_count`
 - `#my_map`
 - `#my_inject`

Finally, the `#my_map` function was modified to accept either a block or a Proc. 

### 6. Fibonacci sequence
In the [Fibonacci sequence](https://en.wikipedia.org/wiki/Fibonacci_number), each number is the sum of the two preceeding numbers. In this exercise, two methods are created:

 - `#fibs`, which takes in a number and returns an array of that many numbers in the Fibonacci sequence. This method uses iteration (a `for` loop) to solve the problem.
 - `#fibs_rec`, which also takes in a number and returns an array of that many numbers in the Fibonacci sequence. However, this method uses recursion to solve the problem -- and the code takes up only **one** line!

 ### 7. Merge sort
 [Merge sort](https://en.wikipedia.org/wiki/Merge_sort) is a more efficient sorting algorithm than bubble sort but is also more complex. [Merge sort](https://www.youtube.com/watch?v=uEbdK2CG_B8&feature=youtu.be&t=1h2m) is a divide and conquer algorithm that relies on recursion to sort a list. Briefly, merge sort starts by dividing a list up into lists that each contain only one element and then merges these lists back together, sorting as it goes. 


## Development versions
 - Ruby 2.5.3
 - RSpec 3.8

## Using this code

1. Fork this repository on GitHub.
2. Clone your forked reposity onto your local computer.
3. To run the tests, `cd` into the main directory and then run `rspec`.