
import Foundation

/*  Write an function that takes an array of intergers
 that returns the max value of that array  */

func maxValue(intergers: [Int]) -> Int {
    
    var biggest = 0
    
    for interger in intergers {
        if biggest < interger {
            biggest = interger
        }
    }
    
    return biggest
}

maxValue(intergers: [0,4,5,6,7,8,35,50])

func digitize(_ num:Int) -> [Int] {
    let numbers: [Int]
    
    let reversed = numbers.reversed()
    for i in reversed {
        let index = i
    }
    return numbers
}

digitize(4535677)


/*
INSERTION SORT - Good for solving small amount of number of elements
 
*/


// NOTES: Merge sort has a factor of lg n in its running time, insertion sort has a factor of n, which is much larger

// NOTES: Although insertion sort is usually faster than merge sort for small input sizes, once the input size n becomes large enough, merge sort's advantage of lg n vs. n will more than compensate for the difference in constant factors

// TAKEAWAY: Insertion sort is faster than Merge sort with smaller values but when those values increase Merge sort is the better algorithm to use.

//1.2-1 Give an example of an application that requires algorithmic content at the application level, and discuss the function of the algorithms involved.
// ------- A web base application that determines how to travel from one location to another

//1.2-2 Suppose we are comparing implementations of insertion sort and merge sort on the same machine. For inputs of size n, insertion sort runs in 8n2 steps, while merge sort runs in 64n lg n steps. For which values of n does insertion sort beat merge sort?
// -------- Insertion sort beats merge sort when there are smaller values, as the problem size increases so does merge sort advantage over insertion sort

// 1.2-3 What is the smallest value of n such that an algorithm whose running time is 100n2 runs faster than an algorithm whose running time is 2n on the same machine?
// ------- When the constants get bigger in value log n becomes faster than n

// 1.2.4



/**********************************************************************************************************
Operator
 
Given the meal price (base cost of a meal), tip percent (the percentage of the meal price being added as tip), and tax percent (the percentage of the meal price being added as tax) for a meal, find and print the meal's total cost.
 
 mealCost = 12
 tipPercent = 20
 taxPercent = 8
 
 tip = 12 x 20/100 = 2.4
 tax = 12 x 8/100 = 0.96
 totalCost = mealCost + tip + tax = 12 + 2.4 + 0.96 = 15.36
 round(totalCost) = 15
 
***********************************************************************************************************/

let mealCost = 12.0
let tipPercent = 20
let taxPercent = 8

let tip = mealCost * (Double(tipPercent) / 100)
let tax = mealCost * (Double(taxPercent) / 100)

let totalCost = mealCost + tip + tax

round(totalCost)


/**********************************************************************************************************
Intro to Conditional Statments
 
Given an integer, n, perform the following conditional actions
 
• If n is odd, print "Weird"
• If n is even and in the inclusive range of 2 to 5, print "Not Weird"
• If n is even and in the inclusive range of 6 to 20, print "Weird"
• If n is even and greater than 20, print "Not Weird"

Print "Weird" if the number is weird; otherwise, print "Not Weird"
***********************************************************************************************************/

let someNumber = 22

for i in 0...someNumber {
    let odd = i % 1
    let even = i % 2
    
    if odd != 0 && odd <= 6 {
        print("Not Weird")
    }
    
}

/**********************************************************************************************************
Class vs. Instance
 
 Write a Person class with an instance variable, "age", and a constructor that takes an integer,"initialAge", as a parameter. The constructor must assign "initalAge" to "age" after confirming the argument passed as "initalAge" is not negative; if a negative argument is passed as "initialAge" , the constructor should set  to 0 and print Age is not valid, setting age to 0.. In addition, you must write the following instance methods:

 1. yearPasses() should increase the "age" instance variable by 1.
 2. amIOld() should perform the following condital actions:
    
    • If age < 13, print You are young
    • If age ≥ 13 and age < 18, print You are a tennager
    • Otherwise, print You are old.
 ***********************************************************************************************************/


for i in 0...2 {
    print("something: \(i * 2)")
}

/**********************************************************************************************************
 Return the number (count) of vowels in the given string.
 
 We will consider a, e, i, o, and u as vowels for this Kata.
 
***********************************************************************************************************/






/**********************************************************************************************************
 The museum of incredible dull things
 
 The museum of incredible dull things wants to get rid of some exhibitions. Miriam, the interior architect, comes up with a plan to remove the most boring exhibitions. She gives them a rating, and then removes the one with the lowest rating.
 
 However, just as she finished rating all exhibitions, she's off to an important fair, so she asks you to write a program that tells her the ratings of the items after one removed the lowest one. Fair enough.
 
 Task
 
 Given an array of integers, remove the smallest value. If there are multiple elements with the same value, remove the one with a lower index. If you get an empty array/list, return an empty array/list.
 
 Don't change the order of the elements that are left.
 
 Examples
 
 removeSmallest([1,2,3,4,5]) = [2,3,4,5]
 removeSmallest([5,3,2,1,4]) = [5,3,2,4]
 removeSmallest([2,2,1,2,1]) = [2,2,2,1]
 
 ***********************************************************************************************************/





/**********************************************************************************************************
 Mr. Scrooge has a sum of money 'P' that wants to invest, and he wants to know how many years 'Y' this sum has to be kept in the bank in order for this sum of money to amount to 'D'.
 
 The sum is kept for 'Y' years in the bank where interest 'I' is paid yearly, and the new sum is re-invested yearly after paying tax 'T'
 
 Note that the principal is not taxed but only the year's accrued interest
 
 Example:
 
 Let P be the Principal = 1000.00
 Let I be the Interest Rate = 0.05
 Let T be the Tax Rate = 0.18
 Let D be the Desired Sum = 1100.00
 
 
 After 1st Year -->
 P = 1041.00
 After 2nd Year -->
 P = 1083.86
 After 3rd Year -->
 P = 1128.30
 Thus Mr. Scrooge has to wait for 3 years for the initial pricipal to ammount to the desired sum.
 
 Your task is to complete the method provided and return the number of years 'Y' as a whole in order for Mr. Scrooge to get the desired sum.
 
 Assumptions : Assume that Desired Principal 'D' is always greater than the initial principal, however it is best to take into consideration that if the Desired Principal 'D' is equal to Principal 'P' this should return 0 Years.
 
 ***********************************************************************************************************/




/**********************************************************************************************************
 You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.
 
 Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).
 
 ***********************************************************************************************************/



/**********************************************************************************************************
 Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
 
 The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
 
 Examples:
 
 toWeirdCase( "String" );//=> returns "StRiNg"
 toWeirdCase( "Weird string case" );//=> returns "WeIrD StRiNg CaSe"
 
 ***********************************************************************************************************/




/**********************************************************************************************************
 
 In this kata, you must create a digital root function.
 
 A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.
 
 Here's how it works (Ruby example given):
 
 digital_root(16)
 => 1 + 6
 => 7
 
 digital_root(942)
 => 9 + 4 + 2
 => 15 ...
 => 1 + 5
 => 6
 
 digital_root(132189)
 => 1 + 3 + 2 + 1 + 8 + 9
 => 24 ...
 => 2 + 4
 => 6
 
 digital_root(493193)
 => 4 + 9 + 3 + 1 + 9 + 3
 => 29 ...
 => 2 + 9
 => 11 ...
 => 1 + 1
 => 2

 ***********************************************************************************************************/



/**********************************************************************************************************
 Create a function named divisors that takes an integer and returns an array with all of the integer's divisors(except for 1 and the number itself). If the number is prime return the string '(integer) is prime' (use Either String a in Haskell).
 
 Example:
 
 divisors(12); //should return [2,3,4,6]
 divisors(25); //should return [5]
 divisors(13); //should return "13 is prime"
 You can assume that you will only get positive integers as inputs.
 
 ***********************************************************************************************************/





/**********************************************************************************************************
 Welcome. In this kata, you are asked to square every digit of a number.
 
 For example, if we run 9119 through the function, 811181 will come out.
 
 Note: The function accepts an integer and returns an integer
 
 ***********************************************************************************************************/





/**********************************************************************************************************
 Given two integers, which can be positive and negative, find the sum of all the numbers between including them too and return it. If both numbers are equal return a or b.
 
 Note! a and b are not ordered!
 
 Example:
 GetSum(1, 0) == 1   // 1 + 0 = 1
 GetSum(1, 2) == 3   // 1 + 2 = 3
 GetSum(0, 1) == 1   // 0 + 1 = 1
 GetSum(1, 1) == 1   // 1 Since both are same
 GetSum(-1, 0) == -1 // -1 + 0 = -1
 GetSum(-1, 2) == 2  // -1 + 0 + 1 + 2 = 2
 Waiting for the Feedback! Thanks!
 
 ***********************************************************************************************************/






/**********************************************************************************************************
 Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
 
 For example:
 
 uniqueInOrder('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
 uniqueInOrder('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
 uniqueInOrder([1,2,2,3,3])       == [1,2,3]
 
 ***********************************************************************************************************/







/**********************************************************************************************************
 Polycarpus works as a DJ in the best Berland nightclub, and he often uses dubstep music in his performance. Recently, he has decided to take a couple of old songs and make dubstep remixes from them.
 
 Let's assume that a song consists of some number of words. To make the dubstep remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song (the number may be zero), after the last word (the number may be zero), and between words (at least one between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", in one string and plays the song at the club.
 
 For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".
 
 Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.
 
 Input
 
 The input consists of a single non-empty string, consisting only of uppercase English letters, the string's length doesn't exceed 200 characters
 
 Output
 
 Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.
 
 Examples
 
 songDecoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")
 // =>  WE ARE THE CHAMPIONS MY FRIEND
 ***********************************************************************************************************/






/**********************************************************************************************************
 You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
 
 For example:
 
 Let's say you are given the array {1,2,3,4,3,2,1}:
 Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
 
 Let's look at another one.
 You are given the array {1,100,50,-51,1,1}:
 Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.
 
 Note: Please remember that in most programming/scripting languages the index of an array starts at 0.
 
 Input:
 
 An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
 
 Output:
 
 The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.
 
 Note:
 
 If you are given an array with multiple answers, return the lowest correct index.
 
 ***********************************************************************************************************/






/**********************************************************************************************************
 n this kata you have to write a simple Morse code decoder. While the Morse code is now mostly superceded by voice and digital data communication channels, it still has its use in some applications around the world.
 The Morse code encodes every character as a sequence of "dots" and "dashes". For example, the letter A is coded as ·−, letter Q is coded as −−·−, and digit 1 is coded as ·−−−. The Morse code is case-insensitive, traditionally capital letters are used. When the message is written in Morse code, a single space is used to separate the character codes and 3 spaces are used to separate words. For example, the message HEY JUDE in Morse code is ···· · −·−− ·−−− ··− −·· ·.
 
 NOTE: Extra spaces before or after the code have no meaning and should be ignored.
 
 In addition to letters, digits and some punctuation, there are some special service codes, the most notorious of those is the international distress signal SOS (that was first issued by Titanic), that is coded as ···−−−···. These special codes are treated as single special characters, and usually are transmitted as separate words.
 
 Your task is to implement a function decodeMorse(morseCode), that would take the morse code as input and return a decoded human-readable string.
 
 For example:
 
 decodeMorse('.... . -.--   .--- ..- -.. .')
 //should return "HEY JUDE"
 The Morse code table is preloaded for you as MORSE_CODE dictionary, feel free to use it. In Java, the table can be accessed like this: MorseCode.get('.--'). In C#, the preloaded Dictionary can be accessed like this: MorseCode.Get('.--');.
 
 All the test strings would contain valid Morse code, so you may skip checking for errors and exceptions.
 In C#, tests will fail if the solution code throws an exception. Please keep that in mind. (This is mostly because else the engine would simply ignore the tests, resulting in a "valid" solution.)
 
 Good luck!
 
 ***********************************************************************************************************/





/**********************************************************************************************************
 Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.
 
 If you want to know more http://en.wikipedia.org/wiki/DNA
 
 In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
 
 DNAStrand ("ATTGC") # return "TAACG"
 
 DNAStrand ("GTAT") # return "CATA"
 ***********************************************************************************************************/

/**********************************************************************************************************
 Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
 
 1st (1)   2nd (3)    3rd (6)
 *          **        ***
 *         **
 *
 
 You need to return the nth triangular number. You should return 0 for out of range values:
 
 triangular(0)==0
 triangular(2)==3
 triangular(3)==6
 triangular(-10)==0
***********************************************************************************************************/

func triangular(_ n: Int) -> Int{
    
//    // if n is less than 0 AND 1 up to "n"
//    return n > 0 ? (1...n).reduce (0,+) :0
    
    return 0
}

/**********************************************************************************************************
The deletion distance between two strings is the minimum number of characters that you need to delete in the two strings in order to have the same string. The deletion distance between "cat" and "at" is 1, because you can just delete the first character of cat. The deletion distance between "cat" and "bat" is 2, because you need to delete the first character of both words. Of course, the deletion distance between two strings can't be greater than the sum of their lengths, because you can always just delete both of the strings entirely.

Implement an efficient function to find the deletion distance between two strings.

You can refer to the Wikipedia article on the algorithm for edit distance if you want to. The algorithm there is not quite the same as the algorithm required here, but it's similar.

***********************************************************************************************************/



/**********************************************************************************************************

A string of brackets is correctly matched if you can pair every opening bracket up with a later closing bracket, and vice versa. For example, "(()())" is correctly matched, and "(()" and ")(" are not.

Implement a function which takes a string of brackets and returns the minimum number of brackets you'd have to add to the string to make it correctly matched.

For example, "(()" could be correctly matched by adding a single closing bracket at the end, so you'd return 1. ")(" can be correctly matched by adding an opening bracket at the start and a closing bracket at the end, so you'd return 2.

If your string is already correctly matched, you can just return 0.
 
***********************************************************************************************************/



/**********************************************************************************************************


The palindromic score of a string is the number of errors (characters which do not match) when the string is read forwards and backwards. For example, the palindromic score of 'fox' is 2, because 'fox' and 'xof' differ by two characters. Write a function to take a string and return its palindromic score.


***********************************************************************************************************/

/************************************************************************************************************
 Convert number to reversed array of digits
************************************************************************************************************/
func digitize(_ num:Int) -> [Int] {
    
    return String(num).characters.flatMap {(Int(String($0)))}.reversed()
}
digitize(88880)



