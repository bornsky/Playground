
import Foundation


// Palindromes takes a word that spells itself back from front to back
func palindromes(word: String) -> Bool {
    
    let mutableText = word.trimmingCharacters(in: NSCharacterSet.whitespaces).lowercased()
    let length = mutableText.characters.count
    
    if length == 1 || length == 0 {
        return false
    } else if mutableText[mutableText.startIndex] == mutableText[mutableText.index(mutableText.endIndex, offsetBy: -1)] {
        let range = Range<String.Index>(mutableText.index(mutableText.startIndex, offsetBy: 1)..<mutableText.index(mutableText.endIndex, offsetBy: -1))
        return palindromes(word: mutableText.substring(with: range))
    }
    return false
}

// Test to check that non-palindromes are handled correctly:
print(palindromes(word: "owls"))

// Test to check that palindromes are accurately found (regardless of case and whitespace:
palindromes(word: "lol")
palindromes(word: "race car")
