#1: ENCRYPT METHOD
#Ask user for "password" to encrypt. Assign password variable.
puts "Choose and type a password to be encrypted. It must be in all lower-case letters."
password = gets.chomp
#Print password to be encrypted.
puts "Ok, so the password you wish to encrypt is:
  [#{password}]
Easy peasy... Your password will be encrypted. Hit `return` to continue."
pause = gets.chomp

#Define encrypt method that advances each letter of password string one letter forward in alphabet:
  #Assign counter variable.
  #Write loop that will continue rewriting each letter of password as the next letter in alphabet (redefining the password variable with its encryption)
def encrypt(x)
  counter = 0
  while counter < x.length
    x[counter] =
      x[counter].next!
    counter += 1
  end
end
encrypt(password)
#Print encrypted password.
puts "Your password is now encrypted as:
  [#{password}]
Hit return to continue."
pause = gets.chomp

#Time to decrypt
puts "Great!!!
Now, we will decrypt our newly encrypted password to return it to normal.
When you're ready to decrypt, hit return."
pause = gets.chomp

#2: DECRYPT METHOD
#Define a decrypt method that will reverse our encrypt method and return the original password.
  #Define new counter variable.
  #Define an empty string.
  #Write a loop that goes through each letter of our encrypted password, defines its position as an index of the alphabet, moves back a position in the alphabet, and then pushes the letter corresponding to the new position into our empty string, returning a new string that is our original password.

def decrypt(x)
  counter = 0
  decrypted_password = ""
  while counter < x.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    encrypted_position = alphabet.index(x[counter])
    decrypted_position = encrypted_position - 1
    p decrypted_password<<alphabet[decrypted_position]
    counter += 1
  end
  decrypted_password
end

voila = decrypt(password)

puts "Your original password was #{voila}."