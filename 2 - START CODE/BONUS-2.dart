
// Function to check if string has balance bracket
String checkBalanced(String input) {
  List<String> stack = [];

  Map<String, String> bracketPairs = {
    '}': '{',
    ']': '[',
    ')': '(',
  };

  for (var char in input.split('')) {
    if (char == '{' || char == '[' || char == '(') {
      stack.add(char);
    } else if (bracketPairs.containsKey(char)) {
      if (stack.isEmpty || stack.last != bracketPairs[char]) {
        return 'Not balanced';
      }
      stack.removeLast();
    }
  }

  // If the stack is empty, all brackets are match
  return stack.isEmpty ? 'Balanced' : 'Not balanced';
}
void main() {
  print(checkBalanced("{what is (42)}?"));    
  print(checkBalanced("[text}"));              
  print(checkBalanced("{[[(a)b]c]d}"));        
}