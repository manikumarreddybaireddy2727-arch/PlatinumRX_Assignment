text = input("Enter text: ")
result = ""
for char in text:
    if char not in result:
        result += char
print("Result:", result)
