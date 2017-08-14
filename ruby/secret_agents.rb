#1: ENCRYPT METHOD
#Ask user for "password" to encrypt. Assign password variable.
puts "Choose and type a password to be encrypted. It must be in all lower-case letters."
password = gets.chomp
#Define encrypt method that advances each letter of password string one letter forward in alphabet:
  #Assign counter variable.
  #Write loop that will continue rewriting each letter of password as the next letter in alphabet (redefining the password variable with its encryption)
def encrypt(x)
  counter = 0
#Print password to be encrypted.
puts "Ok, so the password you wish to encrypt is:
    [#{x}]
Easy peasy... Your password will be encrypted..."

  while counter < x.length
    if x[counter] == "z"
      x[counter] = "a"
    else x[counter] =
      x[counter].next!
    end
    counter += 1
  end
  puts "Your password is now encrypted as:
  [#{x}]"
  return x
end

encrypt(password)

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
    decrypted_password<<alphabet[decrypted_position]
    counter += 1
  end
  puts "Your original password was #{decrypted_password}."
  decrypted_password
end

decrypt(password)

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

p decrypt(encrypt("swordfish"))
