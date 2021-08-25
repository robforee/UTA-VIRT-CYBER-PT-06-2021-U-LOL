## 10.1 Student Guide: Introduction to Cryptography 

### Overview

In today's class, you will be introduced to the fundamental concepts of cryptography.

### Class Objectives

By the end of class, you will be able to:

  - Use basic transcription and substitution ciphers and keys to encrypt simple messages. 
  - Understand how encryption supports secure communication through the PAIN framework. 
  - Differentiate between encoding and encrypting. 
  - Calculate the strength and efficiency of various encryption levels.
  - Use symmetric encryption tool Open SSL to confidentially transmit secure messages.

### Slideshow

The lesson slides are available on Google Drive here: [10.1 Slides](https://docs.google.com/presentation/d/1PcMjxAML8qDOAQL1vmaVjHss4RgMjv-S4LMsxOxOwg8/edit#slide=id.g4f80a3047b_0_990)



### Student Guide

Distribute a student-facing version of the lesson plan: [10.2 Student Guide](StudentGuide.md)


-------
 
### 01.  Introduction to Cryptography 

This unit will cover the exciting world of cryptography!

One of the core concepts of cybersecurity is confidentiality, which is focused on keeping information and communications secure from unauthorized parties. 

It is critical for organizations to keep private information secure. Information getting into the wrong hands can cause significant financial and reputational impact.

  - For example:

     - A doctor loses a laptop containing patients' private medical records.

     - An unauthorized person finds the laptop, opens it, and is able to view the private data.

     - This can impact the reputation of the doctor _and_ the hospital responsible for maintaining the data.

     - This can also have financial impact, as a leak can result in significant legal fines for disclosure of sensitive data. 
     
A primary method for keeping information secure is  **cryptography**.  

  - Cryptography is the art and science of keeping information secure through the use of  mathematical concepts and techniques.
  
This week we will be learning the various methods and techniques of cryptography, and how they are applied with current technologies and devices we use every day.
  
### 02. The History of Cryptography

While cryptography seems like a modern concept, cryptographic techniques were actually in use in early human civilizations.

As these early human civilizations engaged in battles, politics, and fights for supremacy, individuals needed to find methods to communicate securely with each other and keep their communications hidden from enemies.

#### Caesar Cipher

One of the earliest methods of applied cryptography is the **Caesar cipher**.

  - Julius Caesar, a Roman general, needed a method for communicating securely with his military.
  
  - Caesar needed a method that would make his communications illegible to his enemies. For example:

     - Suppose Caesar needed to tell his military: "Launch an attack at sunrise."

     - He needed to be sure this communication, if intercepted, would not be understood by anyone outside his military.

  - Caesar developed a method for hiding his communications, which later came to be known as the Caesar cipher.
  
  -  A **cipher** is a method of designing secret or hidden messages.

The Caesar cipher is a method of **encryption**—a process of modifying a message or information to prevent unauthorized parties from accessing it. 

   - Encryption takes a **plaintext** (readable text) message and converts it to an unreadable message, known as the **ciphertext**.
   
   - For example:
     - Caesar's plaintext message would be "Launch an attack at sunrise."
     - Once encrypted, the ciphertext message could be "Odxqfk dq dwwdfn dw vxqulvh."
     - Even if Caesar's enemies intercept the ciphertext, they would not understand the message.
     
The goal of the Caesar cipher is not only to prevent unauthorized parties from reading the communication, but to also allow authorized parties, such as Caesar's military, to receive and understand the hidden message.

  - This is accomplished through **decryption**.

  - Decryption takes the ciphertext and converts the message back to the readable plaintext.

    - In the previous example, the military would receive the ciphertext message "Odxqfk dq dwwdfn dw vxqulvh."

    - Once decrypted by Caesar's military, it would be converted back to the plaintext message of "Launch an attack at sunrise," and Caesar's military would understand the message.
 
The Caesar cipher is a simple method in which each letter in the message is replaced by a letter located a fixed number of positions further down the alphabet.

  - The first step is to select this fixed number, known as a key, to determine how many letters to shift in the alphabet.

  - The **key**, or cryptographic key, specifies how plaintext is converted to ciphertext and vice versa.
  
  - The shift moves to the right. For example, with the letter **A**:
    - A shift (or key) of one would result in a **B**.
    - A shift (or key) of two would result in a **C**.
    - A shift (or key) of three would result in a **D**.
    - If the shift passes the letter **Z** it would start back at **A** and continue.
      
This method is used to encrypt a plaintext message:

   - To encrypt "hello" with a shift or key of two:
      
      
      - H > J
      - E > G
      - L > N
      - L > N
      - O > Q
      

  - This results in a ciphertext message of "jgnnq."

  - To decrypt "jgnnq," we would apply the same rule in reverse, shifting the letters back two characters in the alphabet.
   

    - J > H
    - G > E
    - N > L
    - N > L
    - Q > O


  - This decryption takes the ciphertext of "jgnnq" and returns it to the plaintext of "hello."
  
While the Caesar cipher provided confidentiality to Caesar many years ago, it's only used today for educational purposes, due to how easily it can be decrypted. 

Over time, individuals and countries adopted new techniques and technologies for more advanced encryption methods.
    
#### The Enigma Machine

As technology advanced, applied cryptography became more complex and harder to crack.

After the end of the World War I, a German engineer named Arthur Scherbius developed an advanced encryption machine called the **Enigma machine**. 

- The Enigma machine became a popular method used by the Germans during World War II to transmit encrypted messages.

  - The Enigma machine is designed to scramble the 26 letters of the alphabet.

  - It allows for billions of ways to encrypt a message, which made it extremely difficult for other nations to decrypt German messages during the war.

  - The machine is an electromechanical device containing a keyboard and a lampboard.

    - The keyboard is similar to the keyboard on your computer, used to type (press) each letter of a message.

    - The lampboard looks similar to a keyboard, but the letters aren't pressed. Lampboard letters are simply lit or not lit after each key on the keyboard is pressed.
    
      ![Engima](images/enigma.png)   
    
    
Let's look at how an Enigma machine was used to create keys and encrypt and decrypt messages. 
   
- **Configuration**

  Settings for the Enigma machine were configured by the user.

  - These settings included: 

    - Plugging wires into specific slots. 
      
      ![wires](images/wires.png)
      
    - Arranging rotor settings.
      
      ![rotor](images/rotors.png)
      
  - While the details of these settings aren't important, it's important to understand that how the user configured them determined how the data was encrypted.

  - The settings selected by the user were the key.

  - These exact settings needed to be used by the recipient for decryption.

- **Encryption**
    
  - Next, an individual typed the plaintext using the machine's keyboard, one letter at a time.

  - After each letter was pressed on the keyboard, another letter lit up on the machine's lampboard.

  - The illuminated letters were documented, creating the ciphertext.

  - The ciphertext was transmitted to the recipient.

  
- **Decryption**
 
  - The recipient received the secret key (the configuration) in advance.

  - The recipient used the key to configure their machine with the exact settings used for encryption.

  - Ciphertext letters were entered one at a time on the keyboard, showing the original plaintext in the lampboard.

  - The illuminated letters were documented one at a time, converting the ciphertext back to plaintext. 
  
  
#### Cracking the Enigma Cipher
   
During the height of World War II,  Alan Turing, an English mathematician and computer scientist, developed a method to exploit the weaknesses of the Enigma machine's design.  

  - Turing developed a machine known as the Bombe, which helped decrypt the most complex versions of the Enigma cipher.

  - This was considered one of the most important victories of the Allied forces during the war, as Turing's Bombe machine was able to prevent many attacks by decrypting secret messages sent by the Germans.
  
This is a brief introduction to the Enigma cipher. If you're interested in researching more about this topic:
   
   - Refer them to the Wikipedia page on [Cryptanalysis of the Enigma](https://en.wikipedia.org/wiki/Cryptanalysis_of_the_Enigma).
   
   - Refer them to the film _The Imitation Game_, about Alan Turing and how he cracked the Enigma cipher.

  
 #### Summary

   - **Plaintext**: Information in human-readable form. 

   - **Ciphertext**: Plaintext message that has been encrypted into an unreadable form.

   - **Encryption**: The process of converting plaintext to ciphertext.

   - **Decryption**: The process of converting ciphertext to plaintext.

   - **Cipher**: A method of performing encryption or decryption.

   - **Key**: A parameter specifying how plaintext is converted to ciphertext and vice versa.

   - **Caesar cipher**: A type of cipher that shifts the letters in the alphabet by a fixed number.

   - **Enigma cipher**: A type of cipher used by Germany in World War II to encrypt messages.
   

### 03. Caesar Cipher Code Names Activity 


- [Activity File: Caesar Cipher Code Names](activities/03_Caesar_Cipher_Code_Names/unsolved/readme.md)


### 04. Review Caesar Cipher Code Names Activity 

- [Solution Guide: Caesar Cipher Code Names](activities/03_Caesar_Cipher_Code_Names/solved/readme.md)


### 05. Introduction to Character Encoding

We've just covered several methods that were historically used to hide a sender's communication.

  - Each of these methods uses a letter cipher to scramble a plaintext message and create a ciphertext.

  - While letter ciphers were useful in the past, these methods wouldn't work today, since most communications are transmitted with digital data.

  - Remind the class that, as previously covered, computers transmit digital data with **binary**.  

  - Therefore, encrypting data on computers requires a method of alphanumeric representation known as **character encoding**. 

#### Encoding

**Encoding** may look similar to **encryption**, but it has a very different goal:

  - The goal of encoding is not to keep information secret, but to transform data so it can be properly used by a different type of system.
    
    - For example, transforming text to binary so data can be digitally transmitted.

  - Data is encoded with a publicly-available scheme that can be decoded by anyone.  

  - Encoding does not use a key. 

#### Encryption

  - The goal of encryption is to keep information from being accessed by unauthorized parties. Encryption

  - Encryption uses a key, which encrypts and decrypts the data.
  
There are many encoding schemes available. The primary types we will review are: binary, ASCII, hex, and octal. 
  
#### Binary Encoding

Binary is the basis of digital communications.

  - Most encryption of digital communication takes place at the level of binary data. Readable text is first converted to binary before applying encryption. 



Character encoding with :

  - Eight bits = one byte.

  - One byte is made up of `1`s and `0`s, and can range from `00000000` to `11111111`. 

  - Each byte can represent a number, which is called a **decimal**.

    - For example: 

      - The byte `00000000`  represents the decimal 0.

      - The byte `11100000`  represents the decimal 224.
    
      - The byte `11111111`  represents the decimal 255.

   - This conversion is called a **binary to decimal encoding**.
   
#### ASCII Encoding   
 
Since each byte can only represent a number from zero to 255, and since we read text with letters, we need a method to convert these numbers to letters.

This is accomplished with **ASCII encoding**:

  - Open the [ASCII Table website](http://www.asciitable.com/) for reference.

  - ASCII stands for _American Standard Code for Information Interchange_.

  - ASCII encoding is the representation of every upper and lowercase letter of the English alphabet, as well as common punctuation marks, and graphic and mathematical symbols, as a number between zero and 255.

    **Note**: Zero to 127 is considered the standard ASCII, and 127 to 255 is considered extended ASCII.

  - For example:

    - The decimal value **84** represents the character **T**.

    - The decimal value **118** represents the character **v**.

 - This conversion is called **decimal to ASCII encoding** or **decimal to text encoding**.   

- The ASCII Table website shows other conversions as well, such as hex and octal.

#### Hex and Octal Encoding

**Hex encoding**:

  - Binary representation has the disadvantage of resulting in very long numbers. 

    - For example, the binary representation of the word "hello" is `1101000 1100101 1101100 1101100 1101111`.

  - Hex, short for _hexadecimal_, is an efficient number system that exists partly to allow for more compact representations of binary data.  

  - Hex is a numeric system made up of 16 symbols, using the letters A through F and the numbers zero through nine.

    - For example:

      - The hex value **52** represents the character **R**.

      - The hex value **7A** represents the character **z**.

    - The hex representation of the word "hello" is **68 65 6c 6c 6f**.

 - This conversion is called **hex to ASCII encoding** or **hex to text encoding**. 
 
Finally, briefly introduce **octal** as a system that applies a principle similar to hex, but uses digits zero through seven. 

  - For example: The octal value **042** represents the decimal **34**.


You won't be expected to translate between the various character encodings themselves—that's a job best left to translation tools. However, the underlying purpose and theory of character encoding is an important concept. 
  
While it may seem difficult to encode and decode with these various schemes, there are many free online resources available that can help. 

#### Encoding and Decoding Tools

Here are two popular, free encoding decoding websites:

  - [Browserling](https://www.browserling.com/)
  - [Rapid Tables](https://www.rapidtables.com/)
  
We will complete a brief walkthrough of decoding a binary message using Browserling.

- First, access the [Binary to Text Converter](https://www.browserling.com/tools/binary-to-text) page.

  - This page is specific to converting binary data to text.

  - Scroll to the bottom of the page and illustrate that there are many other conversions available.

- We will decode the binary message: 

    `01001001 00100000 01101100 01101111 01110110 01100101 00100000 01100011 01110010 01111001 01110000 01110100 01101111 01100111 01110010 01100001 01110000 01101000 01111001 00100001`

   - Copy and paste this binary data into the box on the screen and select **Convert!**

- The message should show that the binary data represents the text data "I love cryptography!"

 #### Summary
 
   - The goal of encoding isn't to keep a message secret, but to transform data to be used by another system.

   - Encoding, unlike encryption, does not use a key.

   - Encoding is often used to transform digital text data into binary data, where encryption commonly takes place.

   - There are many types of encoding schemes available and each is relevant for different circumstances.

   - There are many free online resources for encoding and decoding messages, such as [Browserling](https://www.browserling.com/) and [Rapid Tables](https://www.rapidtables.com/).
 
### 06. Decoding Activity 

- [Activity File: Decoding](activities/06_Decoding/unsolved/readme.md)
- [Message Left at Mayor's House](resources/Message_left_at_Mayor's_House.txt)

### 07. Review Decoding Activity

- [Solution File: Decoding](activities/06_Decoding/solved/readme.md)


### 08. Goals of Cryptography 

So far we have covered and illustrated how cryptographic concepts can be used to keep messages private and confidential.

  - Modern cryptography can serve other goals, illustrated with the cryptographic concept known as the **PAIN model**.
  
  - The PAIN model is an acronym that stands for the core goals of cryptography:

    - **P**rivacy (confidentiality)
    - **A**uthentication
    - **I**ntegrity
    - **N**on-Repudiation
    

#### 1.  Privacy and Confidentiality
 
We have already discussed the cryptography goal of **privacy and confidentiality**, which refers to keeping data secure from unauthorized parties.

 - Confidentiality applies to two types of digital data:

   - **Data at rest**: Static data, such as that stored on a hard drive or database.

     - For example, data stored on your laptop.

     - To protect the confidentiality of this data at rest, we would encrypt the laptop's hard drive.

   - **Data in motion**: Data moving between devices on a network.
     
     - For example, Bob sends an encrypted email to Alice saying "The meeting is at noon."
     
     - To protect the confidentiality of this data in motion, the email data that moves across the internet between Bob and Alice would need to be encrypted.
 
 
#### 2. Authentication
 
An attacker can send an encrypted message claiming to be someone they are not. Therefore, another goal of cryptography is **authentication**.
 
Authentication confirms the identities of the sender and receiver of data.

For instance, in the previous example with Bob and Alice:
 
  - Bob sends an encrypted email to Alice, saying "The meeting is at noon."

  - Alice receives the email from Bob.

  - Later, Alice receives another email claiming to also be from Bob, but it was actually sent by a scammer named Tim.

  - The scam email says "Cancel the meeting until further notice."

  - Without any authentication methods to confirm the email actually came from Bob,  Alice could be tricked into thinking the meeting was cancelled.

 Without authentication, an attacker can send data that is encrypted, but claims to be from someone it's not.

 #### 3. Integrity
 
Even with encryption (privacy) and authentication, an attacker can alter the contents of a message. 

 - This brings us to the next cryptography goal, **integrity**.

 - Integrity ensures that a message isn't altered between when it's sent and when it's received. 

Using the same email example:

  - Bob sends an encrypted email.

  - Bob uses authentication so Alice can confirm the email came from Bob.

  - Unfortunately, Tim was able to intercept and decrypt the message, and change it to say "Meet me at 5 a.m." before encrypting and forwarding the message to Alice.

  - Alice could be tricked into meeting Bob at 5 a.m.

 #### 4. Non-Repudiation
  
Lastly, the goal of **non-repudiation** is to prevent the sender of a message to deny that they are the sender.

  - For example: An employee sends an inappropriate message to their entire office. Because of non-repudiation, that employee will be unable to deny they sent the email. 
    
There are technologies and techniques to ensure each of these four cryptography goals are met. They will be illustrated throughout this week.
  
### 09. Introduction to Cryptography Ciphers

We will continue to focus on the primary goal of of cryptography: privacy and confidentiality.
    
There are various ciphers that use different algorithms to encrypt the data.

- **Algorithms** are mathematical instructions that ciphers use for encryption. 

- Different types of ciphers include: **stream ciphers**, **block ciphers**, **substitution ciphers**, and **transposition ciphers**.

Let's take a look at these various ciphers. 

#### Stream Cipher

Stream ciphers apply their algorithm one bit or one character at a time. 

One prominent type of stream cipher is the substitution cipher.

#### Substitution Ciphers

Substitution ciphers encrypt by substituting new values for old values in the plaintext message.

- The Caesar and Enigma ciphers are substitution ciphers.

- They are substitution ciphers because each letter is substituted for a different one to create the ciphertext.

Modern ciphers use substitution along with other techniques to provide strong, fast encryption. 

- While substitution alone doesn't provide strong cryptography, it's a basic function underlying most of today's algorithms.  
  
#### Block Ciphers

Block ciphers apply their algorithms to chunks, or blocks, of characters.

- A majority of the modern ciphers used today are block ciphers.

A prominent type of block cipher is the transposition cipher.

#### Transposition Cipher  

Transposition ciphers rearrange a sequence of characters.

- Transposition ciphers break an input message into equal-sized blocks and rearrange the letters of each block according to a fixed rule.

We'll look at how the transposition cipher works by encrypting the message "Hello!":
  
- We will use the following key to encrypt the message:

  ```
        | 1 2 3 |
  Key = |       |
        | 3 1 2 |
  ```              
- This key indicates that we: 

  1. Break the message into blocks of three characters.

  2. Replace the first, second, and third characters of the block with the third, first, and second, respectively.

- First, break **Hello!** into two blocks: **Hel**  and  **lo!**

- Next, use the transposition rule to rearrange the letters. 
    - **Hel** to **lHe**
    - **lo!** to **!lo**

- Lastly, combine the rearranged text to create the ciphertext: **lHe!lo**

- To decrypt the cipher text, we would apply the same rule in reverse.

We can see how a more complex cipher would combine substitution and transposition: first obfuscating the original characters with substitution, then further obfuscating by rearranging them. 

There are many more cipher types. 

- If you are interested in researching more other ciphers types, refer them to the [American Cryptogram Association's list of cipher types](https://www.cryptogram.org/resource-area/cipher-types/).
  
#### Summary
 

- The goals of cryptography are illustrated with the **P.A.I.N. model**.

- P.A.I.N. is an acronym standing for Privacy, Authentication, Integrity, and Non-Repudiation.

- Ciphers use mathematical formulas, known as **algorithms**, to encrypt and decrypt data.

- The main cipher categories are **block** and **stream ciphers**.

- Stream ciphers apply their algorithms one character at a time, and block ciphers apply the algorithms to blocks of characters.

- One type of stream cipher is the substitution cipher. One type of block cipher is the transposition cipher.

- Substitution ciphers replace each character with a different character.

- Transposition ciphers rearrange the letters within a defined block size.
   
   
### 10. Cryptography Concepts and Ciphers Activity


- [Activity File: Cryptography Concepts and Ciphers](activities/10_Ciphers/unsolved/readme.md)
- [Alphabet Bandit's Message](activities/10_Ciphers/unsolved/message.txt)
- [Crumpled up note](activities/10_Ciphers/unsolved/crumpled_note.png)

### 11. Review Cryptography Concepts and Ciphers Activity 

Solution file is available here: [Ciphers Activity Solution Guide](activities/10_Ciphers/solved/readme.md)



### 12. Modern Cryptography and Cryptographic Keys 

As technology improved over time, so did the methods for cracking ciphers.

- Ciphers that were previously thought to be secure were eventually defeated and no longer considered safe to use.

  - Note that there is a role within cybersecurity called a **cryptanalyst**, whose primary job is to analyze and crack ciphers.

- To counter this issue, modern cryptography needed to use more complex algorithms with longer cryptographic keys.

Modern cryptographic keys :

  - Remember: Cryptographic algorithms use keys to maintain their security.

  - Each algorithm has a specific **key space**: a range of numbers that can be used for that specific algorithm.

    - In other words, the key space is the total number of possible permutations of a key . 

    - For example, if a password can only be a one digit number:
      - The possible values are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.
      - Thus, the key space is 10.


  - For modern cryptography, key space is defined by its **bit size**, which is the number of binary bits used in the key.

    - You may often hear these bit size encryptions referenced in security conversations.

      - For example, "This email has 64-bit encryption," or "This laptop contains 256-bit encryption."
  
A common question you may hear IT professionals ask is: "How much more secure is _x_ more bits of encryption?"
  
To answer this, we first need to understand the mathematical concepts behind how bit size affects the key space and the level of encryption.

  - Remind class that one bit is simply a `1` or a `0`.
    - For a one-bit key, the key space is two, or two possible values.
  - If we add an additional bit to the key, the possible values are now `00` , `01`, `10`, `11`.
    - For a two-bit key, the key space is four, or four possible values.
  - If we add another bit to the key, the possible values are now `000` , `001`, `010`, `011`, `100`, `101`, `110`, `111`. 
    - So for a three-bit key, the key space is eight, or eight possible values.
    
This progression illustrates that for each bit that is added to the key, the key space **doubles** in size.

 - In order to mathematically compute the key space, we can use the formula: 

    - Two to the power of the bit size, or  2 ^ [bit size].
    
Now, we will do larger key space calculations using a free online calculator.

- We will calculate the key spaces of a 10-bit key and a 30-bit key.    
   

#### Encryption Strength Walkthrough

Open up any web based calculator. Google: "calculator"

We will calculate the key space for a 10-bit key first.

   ![calc](images/calc1.png)

The equation we will use is key space = 2^10.

1. First, type in the **2**.
2. Next, press the **x^y** button to create an exponential value for the bit size.
3. To get the 10-bit key space, enter **10** for the bit size.
4. Finally, press the **=** button to run the calculation.

This just calculated the key space for a 10-bit key as 1,024.
  - This means that for a 10-bit key, there are 1,024 possible values.
  
  ![calc2](images/calc2.png)

To get the key space for the 30-bit key, we repeat the same process.

- This equations calculates the key space for a 30-bit key as 1,073,741,824. Meaning for a 30-bit key, there are over one billion possible values!

This walkthrough illustrates that for each bit of encryption that is added, there is an exponentially significant greater number of possible values added to make the encryption stronger.


### 13. Encryption Strength Activity 

- [Activity File: Encryption Strength](activities/14_encryption_strength/unsolved/readme.md) 

### 14. Review Encryption Strength Activity 

- [Solution Guide: Encryption Strength](activities/14_encryption_strength/solved/readme.md) 
   

### 15. Symmetric Key Algorithms 

We just discussed how the larger the bit size is, the stronger the encryption is.

 - A common question is: Why don't we just have one million-bit key to ensure it's never cracked?

    - It takes time and computational resources to encrypt and decrypt larger keys.

 - Therefore, if the key is large and takes six hours to encrypt and decrypt, we must ask if the encryption strength is worth the time it takes to use the key. 

 - This concept is a **security tradeoff**, which asks the question:
  
    - Do we want an incredibly strong cipher that's hard to compute and difficult to decrypt, or do we want "average" security that's faster?
        
 - Over the last 50 years, cryptographers have been tasked with finding an algorithm to address this security tradeoff and provide strong encryption that is also fast.

This was accomplished with **modern symmetric key algorithms**.
 
  - Cryptographers developed symmetric key algorithms that can be used as an approved standard for secure communication.

  - Symmetric key algorithms use a single, shared key to encrypt and decrypt a message.
  
  - The shared key is also referred to as a **private key**. 
  
 - This key must be private to prevent messages from being decrypted by unauthorized individuals. 
   
The most widely known symmetric key algorithms developed in the last 50 years are **DES**, **3DES**, and **AES**.
   
#### Data Encryption Standard (DES)

  - DES was published in 1977 by the United States government to secure all government communications.

  - DES uses a 56-bit key.

  - Over time, it was determined that the DES algorithm had many flaws, leading the federal government to no longer considered it secure.

  - There were some versions of DES with added security, such as **Triple DES** and **3DES**.
  
Because **DES** was no longer considered secure, the security community had to develop a new, secure symmetric encryption algorithm.

#### Advanced Encryption Standard (AES)

The next symmetric encryption algorithm, Advanced Encryption Standard (**AES**), was developed.

  - In 1997, the National Institute of Standards and Technology (NIST) announced they were seeking a replacement for DES, the algorithm that was in common use but was no longer secure.

  - To select the next algorithm, NIST launched a contest asking cryptographers to submit their best new algorithms.

  - In the first round, NIST collected 15 submissions. The community attempted to break them, and the five most promising algorithms were selected.

  - NIST held a second round in which these five algorithms were subjected to extensive cryptanalysis by the community.

  - The community reached the conclusion that the Rijndael cipher was the strongest.

  - Rijndael was refined, standardized, and renamed the Advanced Encryption Standard (AES).

  - AES offers multiple encryption strengths: 128-bits, 192-bits, and 256-bits. 
  
AES is a symmetric encryption that is still used and considered secure today.  
 
### 16. Introduction to OpenSSL 

We just covered several types of symmetric algorithms. Some of these algorithms, such as AES, are commonly used today to encrypt secure data.
  
Unlike algorithms like the Caesar cipher, which we can use to encrypt a message by hand, the AES algorithm is complicated and cannot be used without advanced technologies.

Fortunately, there is a free command-line based program called OpenSSL which can simplify symmetric encryption and decryption.

We will now encrypt and decrypt a message with OpenSSL.

#### OpenSSL Demonstration

Begin by opening up your command line in your virtual machine.

  - OpenSSL is already preinstalled on your VM, as well as on your Ubuntu machine.
    
Next, create a file that will contain a message to be encrypted. Using an echo command, create a file called `plainmessage.txt`.
  
  - Run `echo "this is a secret message" > plainmessage.txt`

#### Creating the Key and Initialization Vector

The first step for encryption is to create the key and **initialization vector** (IV).

  - The key, which is the private key, will be used for encryption and decryption.
  
  - The initialization vector is an additional value that adds randomness to the key.
  
Enter the following command on the command line to create the key and IV:
  
  - Run `openssl enc -pbkdf2 -nosalt -aes-256-cbc -k mypassword -P > key_and_IV`
     
    - Note: we do not need to know the specificity of every key type and cipher used at this point: 
  
     - `openssl` initializes the OpenSSL program.
     - `enc` stands for _encryption_.
     - `-pbkdf2` specifies the encryption key type. 
     - `-nosalt` specifies that salting will not be applied.
        - (Salting, which will be covered in more depth later, adds a random value.)
     - `-aes-256-cbc` is the name of the cipher used. 
     - `-k PASSWORD` creates a key, with the password `mypassword`.
     - `-P > key_and_IV` prints out the key and IV to a file called `key_and_IV`.
  

- Run the command. This just created a file called `key_and_IV` containing the key and IV.
  
- Open up the file `key_and_IV`, and note the key and IV in the file. 
  
  - For example:

  ```
    key=89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8
    iv =EE99333010B23C01E6364E035E97275C
  ```

#### Encrypting with OpenSSL
  
Next, we will use OpenSSL to encrypt the file `plainmessage.txt` with the key and IV we just created.

- Enter the following command on the command line:


  `openssl enc -pbkdf2 -nosalt -aes-256-cbc -in plainmessage.txt -out plainmessage.txt.enc -base64 -K 89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8 -iv EE99333010B23C01E6364E035E97275C`
   
        
    - `openssl` initializes the OpenSSL program.
    - `enc` stands for _encryption_.
    - `-pbkdf2` specifies the encryption key type. 
    - `-nosalt` specifies that salting will not be applied.
    - `-aes-256-cbc` the type of cipher used.
    - `-in plainmessage.txt` is the input file that we will be encrypting.
    - `-out plainmessage.txt.enc` is the output file that is encrypted.
    - `-base64` specifies completing the encryption in a text format.
    - `-K 89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8` specifies the key and the key value.
    - `-iv EE99333010B23C01E6364E035E97275C` specifies the IV and the IV value.
   
- Run the command. The file `plainmessage.txt.enc` has been created and contains the encrypted text.

- Open the file. The text looks encrypted as it is not readable:

   `zi9BCV1uAdGrOnzL26fGpspt91VY44MNrbtOLL/tih4=`
   
   
### Decrypting with OpenSSL

Now, we will decrypt the encrypted message.

- First, enter the following command on the command line:

   `openssl enc -pbkdf2 -nosalt -aes-256-cbc -in plainmessage.txt.enc -d -base64 -K 89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8 -iv EE99333010B23C01E6364E035E97275C`
   
- The syntax is the same as the encryption, except for two small changes:
  
    - `-d` specifies decryption.

    - `-in plainmessage.txt.enc` specifies that the input message is now the encrypted message.
    
- Run the command and note that it displays the following plaintext message:
  
      this is a secret message
      
 #### Summary
 
   - OpenSSL is a free command-line tool used for symmetric encryption and decryption.

   - OpenSSL can generate a random key and initialization vector (IV).

   - With the key and IV, OpenSSL can encrypt and decrypt a message with simple terminal commands.


### 17. OpenSSL Activity 


- [Activity File: OpenSSL](activities/17_openSSL/unsolved/readme.md) 
- [Captain Strickland's Encrypted Message](resources/communication.txt.enc)
- Key: `key=346B3EFB4B899E8205C4B35E91F5A4605A54F89730AE65CA2C43AB464E76CA99`
- IV: `iv =759D1B9BF335985F55E3E9940E751B67`

  

### 18. Review Open SSL Activity

The solution file is provided here:

- [Solution Guide: Open SSL Activity Solution Guide](activities/17_openSSL/solved/readme.md)
   


-----

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
 ## 10.2 Student Guide: Asymmetric Encryption and Hashing

### Overview

Today's class will expand on fundamental cryptography concepts, covering asymmetric encryption and hashing. 

### Class Objectives

By the end of class, you will be able to:

- Calculate the required number of symmetric and asymmetric keys based on the number of people exchanging secure messages.

- Use GPG to generate keys, and encrypt and decrypt private messages. 

- Use hashes to validate the integrity of data. 

- Use digital signatures to validate the authenticity of data. 


### Slideshow 

The lesson slides are available on Google Drive here: [10.2 Slides](https://docs.google.com/presentation/d/11FmB6S6k9UhEC74yRqCjb-hdi9jqF4UX-i9_trg5R08/edit#slide=id.g4f80a3047b_0_990)

-------

### 01. Overview and Review 

In this lesson, we will continue learning and applying cryptography concepts.

Before we introduce new concepts, let's review those taught in the last class:

- **Cryptography** is the art and science for keeping information secure.

- **Ciphers** are cryptographic methods which disguise data by applying mathematical concepts called **algorithms**.

- Ciphers use **encryption** to convert **plaintext** into **ciphertext**, and use **decryption** to convert ciphertext back to plaintext.

- Ciphers use a **key** to specify how plaintext is converted to ciphertext and vice versa.

- The main cipher categories are **block** and **stream ciphers**.

- Stream ciphers apply their algorithms one character at a time, and block ciphers apply their algorithms to blocks of characters.

- **Encoding** is used transform data to be used by another system, but is not designed to keep a message secret.

- Encoding, which doesn't use a key, is often used to transform Digital Text Data into Binary Data, where encryption commonly takes place.

- The goals of cryptography are illustrated with the **P.A.I.N. model**.

- P.A.I.N. stands for Privacy, Authentication, Integrity and Non-Repudiation.

- The **security tradeoff** is a cryptography concept that refers to the challenge of finding an encryption/decryption method that is fast and secure.

- **Modern symmetric key algorithms** attempt to solve this challenge by using a single key for encryption and decryption.

- **DES, 3DES, and AES** are modern symmetric key algorithms. AES is the most current and secure one in use today.

- **OpenSSL** is a command-line tool that can be used to apply symmetric key encryption.



### 02. Cryptography Refresher

- [Activity File: Cryptography Refresher](activities/02_Cryptography_Refresher/unsolved/readme.md)


### 03. Review Cryptography Refresher 

- [Solution Guide: Cryptography Refresher](activities/02_Cryptography_Refresher/solved/readme.md)

### 04. Introduction to Key Management and Exchange 

In the previous activity, you used symmetric key encryption with OpenSSL.

  - Symmetric key encryption has many benefits, such as:

    - Speed of encryption and decryption.
  
    - Efficiency of encryption and decryption, with minimal computer resources required.
  
    - Simple implementation for communication between two parties, as only one key is required.
    
While symmetric key encryption has these benefits, it also comes with several disadvantages.

#### Disadvantage One: Secure Key Exchange

As we saw in the previous exercise, the first major disadvantage is insecure methods of distributing the keys. 

  - For example, unencrypted emails containing keys can be intercepted.

There are several other methods that can be used to exchange symmetric keys:

 - **Offline exchange**, also known as an **out-of-band exchange**, can include mailing the key, or calling the other party and reading them the key.

   - The vulnerabilities with this method could be: intercepted mail, or a tapped phone line.

 - **Diffie–Hellman key exchange** is a method that uses mathematics to create a shared secret between two parties over a public channel, where the secret can't be seen even if the communication is captured.

   - The shared secret is the key and **not** a communication.

   - While Diffie–Hellman is a complex method, you should just understand the basics— that this exchange is one method available for secure exchange of keys over public channels.

   - Additionally, Diffie–Hellman is often covered on security exams, such as Security+.

   - The primary challenge of using Diffie–Hellman is the complexity of its implementation.

   - If interested, you can research further using the following article and video:
     - [Diffie–Hellman Key Exchange (Wikipedia)](https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange)
     - [Secret Key Exchange (Diffie-Hellman) Video
 (YouTube)](https://www.youtube.com/watch?v=NmM9HA2MQGI)
     
### Disadvantage Two: Key Management 

Another disadvantage of symmetric key cryptography is key management. 

- Symmetric key cryptography between two parties only requires managing one key. But there needs to be a key for each combination of individuals, so the more combinations, the more keys required.

  - For example: If a small organization using symmetric key cryptography had four employees—Julie, Alice, Tim and Bob—the following employee combinations would require six symmetric keys.
  
    - (Key 1) Julie, Alice
    - (Key 2) Julie, Tim
    - (Key 3) Julie, Bob
    - (Key 4) Alice, Tim
    - (Key 5) Alice, Bob
    - (Key 6) Tim, Bob
  
   This illustrates that four individuals would require six symmetric keys.

- Note that organizations typically have many more than four employees. Therefore, each additional person adds a higher volume of keys to be managed.

While it would be challenging to write out all the different combinations for a larger organization, we can use a formula to calculate the number of required symmetric keys:

- Where N is the count of individuals
    
  - (N * (N-1)) / 2  = count of symmetric keys
    
- For example, in order to figure out symmetric keys for an organization of seven people:
   
    -  (7 * 6) / 2  =    42/2 = 21  

- An organization of 1,000 employees would require managing almost half a million symmetric keys:
   
    - (1000 * 999) / 2 = 499,500‬
        
- This formula illustrates the challenge of key management that large organizations face when using symmetric encryption.

   - Additionally, note that calculating the number of keys required is often featured in security exams, such as Security+.
        
In the next section, we will introduce a solution that was created to address these disadvantages with symmetric key encryption, called **asymmetric key encryption**.     

### 05. Asymmetric/Public Key Cryptography 

Now that we covered the various disadvantages that come with symmetric key encryption, we can focus on methods to address them with **asymmetric key encryption**. 

  - Unlike symmetric encryption that uses one key, in asymmetric key encryption, each individual possesses a **two-key pair**.

  - The two-key pair consists of a **private key** and a **public key**, which are linked together.
    - **Public keys**, as the name suggests, can be public and available for anyone to see. 
    - **Private keys** need to be kept secret, as exposure could affect confidentiality of messages.

 - Private and public keys are similar to symmetric keys, in that they are typically a string of random numbers and letters.   
  
Let's look at the following scenario to see how asymmetric key encryption works to encrypt a message:

Tim wants to send Julie his bank account number using asymmetric key encryption.
    
**Step 1: Creating Key Pairs**
     
  - Since Julie needs to receive an encrypted message from Tim, she will have public and private key pairs created: 

    - Julie's key pair: **[Julie's private key]**   **[Julie's public key]**
                  
                  
  - Julie's public keys are truly public: Julie puts her public key on her own website so anyone in the world can see it.
        
**Step 2: Message Creation and Encryption**
   
  - Tim creates a plaintext message that contains his bank account number. 

  - He creates his message, he goes to Julie's website and gets her public key.
  
  - He uses Julie's public key to encrypt his message.
  
     **[Tim's plain text secret message]** encrypted with **[Julie's public key]** = **[Tim's encrypted message]**
           
**Step 3: Message Exchange**
   
  - Tim sends his encrypted message to Julie.

    - He can send this message any way he chooses, even email or Slack, as it is now encrypted and can only be decrypted by Julie.

  - Once it has been encrypted with Julie's public key, the only person who can decrypt it is Julie, as she owns the matching private key.
      
**Step 4: Decryption**
  
  - Julie receives Tim's encrypted message and decrypts with her matching private key.

  - Julie can now see Tim's bank account number.
        
    **[Tim's encrypted message]** decrypted with **[Julie's private key]** = **[Tim's plaintext secret message]** 


Summary:

  - In this scenario, only Julie's public and private key's were used.

  - If Julie wanted to send an encrypted response to Tim, she would apply the same process, but in reverse.

     - Tim would need to create his own public and private key pair and put his public key on his website.
  
     - Julie would encrypt her message with Tim's public key, which she obtained from his website.
  
     - Tim would receive Julie's encrypted message and then decrypt it with his private key.
  
  - Keys pairs always have to be used together.
  
     - In other words, if a public key is used to encrypt a message, its matching private key will be used to decrypt the message.
  
  - This scenario illustrates how asymmetric key encryption is used for confidentiality, by keeping Tim's message secure from unauthorized parties.


We will now look at how this process of asymmetric key encryption addresses the disadvantages of symmetric key encryption.

####  Secure Key Exchange

In the scenario above, there was no need for Julie to find a secure way to to get Tim her public key.

  - Since the key was public and can be seen and accessed by anyone, a secure key exchange method isn't required.

  - This is one of the biggest advantages of asymmetric key encryption.
  
#### Key Management 

If Tim and Julie each needed to send messages to each other, four keys would be required for for a secure communication:
      
  - (1) **[Tim's private key]** 
  - (2) **[Tim's public key]**
  - (3) **[Julie's private key]**      
  - (4) **[Julie's public key]**
               
As noted earlier, while symmetric keys use only one key for a secure exchange between two individuals, when more individuals are added in larger organizations, more and more keys are required, making keys difficult to manage.
   
- For example, in an organization of 12 employees, symmetric encryption would require 66 symmetric keys.

  - (12 * 11) /2 = 66

For asymmetric encryption, each employee would only require their own key pair:

- The calculation is: 
  -  N * 2

- 12 employees would require 24 keys to be managed.
  - (12 * 2) = 24
    
- Note that for an organization of 12 employees, using asymmetric instead of symmetric would require 42 fewer keys. 
  - 66 - 24 = 42

This illustrates how asymmetric encryption addresses the key management issue, as many fewer keys are required for managing larger organizations.

#### RSA

Similar to symmetric encryptions use of modern algorithm such as DES, 3DES, and AES, asymmetric encryption uses an algorithm called **RSA**. 

  - Introduced in 1977 and named after the last names of its creators: Rivest, Shamir, and Adelman.

  - The asymmetric algorithm that is still a worldwide standard today.

  - Works by factoring large prime numbers.

    - If you are interested in further researching RSA, refer them to:
      - [RSA (cryptosystem) (Wikipedia)](https://en.wikipedia.org/wiki/RSA_(cryptosystem))
      
Summary

  - Unlike symmetric encryption which uses one key, asymmetric encryption uses two keys: one public and one private.

  - Public keys are accessible by anyone, and private keys are only accessible by their owner.
  
  - Public and private keys have to work together: if a public key encrypts a message, only the matching private key can decrypt that message.

  - Asymmetric encryption addresses the challenges of symmetric encryption by:

    - Not requiring a secure key exchange method.

    - Using a smaller number of keys for larger organizations.

  - The standard asymmetric algorithm used today is RSA. 
 
### 06. Optimizing with Asymmetric Public Keys Activity

- [Activity File: Optimizing with Asymmetric Public Keys](activities/06_Optimizing_w_Asymmetric/unsolved/readme.md)

### 07. Review Optimizing with Asymmetric Public Keys Activity

- [Solution Guide: Optimizing Asymmetric](activities/06_Optimizing_w_Asymmetric/solved/readme.md).


### 08. Applying Public Key Cryptography with GPG

Similar to symmetric key encryption, asymmetric encryption also has command-line tools to simplify the process of key creation, encryption, and decryption.

The next command-line tool we will demonstrate is called **GPG**.

  - GPG, stands for for *GNU Privacy Guard*.

  - It is a free software program available on many Linux distributions, which can run symmetric and asymmetric encryption algorithms.

  - It can support a variety of algorithms such as 3DES, AES, and RSA.
  
We will demonstrate how to create a key pair and do asymmetric encryption and decryption with GPG.

 - We will be using the same scenario of Tim sending his bank account number to Julie.

     - This demonstration depicts two different individuals completing public key encryption.

     - While not required, it is recommended to have two virtual machines open in order to simulate two individuals: one VM representing Tim, and one representing Julie.

     - If you conduct the demonstration on a single VM, be sure to clarify whether each command is executed by either Julie or Tim.
   
#### GPG Demonstration Setup

Begin by opening up your command line in your virtual machine.

  - GPG is already preinstalled on your VM for use and is also already installed in Ubuntu.
  
  - We will first be conducting the activities of Julie, as she needs to create her key pair and provide her public key to Tim.
  
             
- **Step 1: Creating the Key Pair**

The first step of using asymmetric encryption is for Julie to generate her key pair.

  - To create her public and private key, Julie will enter the following command:

      `gpg --gen-key`
      
  - Following this, Julie will be prompted to enter the following information:
      - Real name: What the user will name their key. We will use *Julie*.
      
      - Email address: The email associated with the key. We will use julie@email.com.
      
      - `Change (N)ame, (E)mail, or (O)kay/(Q)uit?`: Enter `O` to confirm your information.
      
      - Passphrase: A password to protect your private key. Any time the private key is used, the passphrase will be checked.
        - Select any passphrase, just take note of what it is, as it will be used later.
      
  - A similar message will appear to show that the key pair has been created:

    ``` 
      gpg: key D81710193A5FC56A marked as ultimately trusted
      gpg: directory '/home/instructor/.gnupg/openpgp-revocs.d' created
      gpg: revocation certificate stored as '/home/instructor/.gnupg/openpgp-revocs.d/C4A3CFC51B1318FFD4D2C291D81710193A5FC56A.rev'
      public and secret key created and signed

    ```

  - If Julie wanted to validate the keys that are created, she would enter the following command:

    `gpg --list-keys`
          
  - This would return all the keys that are in Julie's keyring, as it is possible to have more than one key. A keyring is simply the storage of multiple keys. 
    
    - A sample key ring with one key could like like the following:

      ```      
      /home/instructor/.gnupg/pubring.kbx
      -----------------------------------
      pub   rsa3072 2019-12-11 [SC] [expires: 2021-12-10]
      C4A3CFC51B1318FFD4D2C291D81710193A5FC56A
      uid           [ultimate] julie <julie@email.com>
      sub   rsa3072 2019-12-11 [E] [expires: 2021-12-10]
      ```

    
- #### Step 2: Exporting and Importing Keys

The sender of the message needs to have the receiver's public key to encrypt the message.

Julie needs to **export** her public key to make it public, so Tim can use it.

- Exporting puts the public key in a format that can be shared and used to encrypt.

- Julie would use the following command Julie to export her public key:

    `gpg --armor --output julie.gpg --export julie@email.com`
    
    - `gpg`: The command to run GPG.
    - `--armor`: Puts the key in an ASCII format.
    - `--output julie.gpg`: Creates the public key in an accessible format. In this case, we named the key `julie.gpg`. 
    - `--export julie@email.com`: References which key to use from the key ring. It is referenced by the email.
    
    
- Run the command to export the public key in a format that can be shared.

- To view the key, run the following command:

    - `cat julie.gpg`
            
- The results should resemble the following format:

    - Note: This is a shortened example.
    
    ```
        -----BEGIN PGP PUBLIC KEY BLOCK-----

        oCN2AghQUDgu5yBVAmPAx7hatvcMBR1X6NqJN4wStLB21OvHdgT2VbiHUtwkGvbJ
        Hsui9eTR7bBY1YgP8PcGFjeMZ5+C7E94uYeksbwMzFWGE79M3kqEi1tgkDZTN/T8
        8O31qQUgDCCbUnuvpW5pYJ2BconeNBHAZNKSKg+9U3DfCazRpky89be6W7WtjDGs
        iFo5PEjBTvCJJXHvDgn2W7I7U0MWO220gyCT/Ja/eKad5GKTeMjOC4ERTwvha0ON

        -----END PGP PUBLIC KEY BLOCK-----
    ```
            
  - For our scenario, Julie would put this public key on her website, or she could directly share it with Tim.
  
  Next, we will illustrate the steps that Tim needs to take:

  - First, once Tim gets this key and saves it in his current directory, he will need to **import** it into his key ring.

  - The command for Tim to import this key is:

    `gpg --import julie.gpg`
      
  - Run this command. To confirm that Julie's key has been imported, the `list-keys` command can be run again:  

    `gpg --list-keys`
        
  - Show that the results display that Julie's public key was added to Tim's key ring.

    - Tim has not yet created any keys. We will do that later.
            
                pub   rsa3072 2019-12-03 [SC] [expires: 2021-12-02]
                39B2BD6C93E1E63E8C004183FE91AF7A7B4EC267
                uid   [ultimate] Julie <julie@email.com>
                sub   rsa3072 2019-12-03 [E] [expires: 2021-12-02]

         
- #### Step 3: Encryption

  Tim now has Julie's public key in his key ring, so he is ready to create a message and encrypt it.
  
    - Tim will want to create a file that will contain a message, so we'll use the following echo command to create a file called `Tims_plainmessage.txt`.

        `echo "Hi Julie, my bank account number is 2783492" > Tims_plainmessage.txt`
        
  - The next step is to use Julie's public key to encrypt `Tims_plainmessage.txt`.

  - We will use the following command:
  
      `gpg --armor --output Tims_encryptedmessage.txt --encrypt --recipient julie@email.com Tims_plainmessage.txt`
        
      - `gpg`: The command to run GPG.
      - `--armor`: Puts the encrypted message in an ASCII format.
      - `--output Tims_encryptedmessage.txt`: Command for the output file, which creates the name of the encrypted file.
      - `--encrypt`: Tells GPG to encrypt.
      - `--recipient julie@email.com`: Tells GPG which public key to use, based on the email address of the key.
      - `Tims_plainmessage.txt`: Specifies for GPG which plaintext file to encrypt.
      
  - Run the command to created a file that has ciphertext called `Tims_encryptedmessage.txt`.
  
    - Run a preview command to illustrate the file has now been encrypted:
    
      `cat Tims_encryptedmessage.txt`
          
    - The encrypted message should look like the following:
        
        ```
        -----BEGIN PGP MESSAGE-----

        hQGMA1p4Le4c2oCaAQv+MT2ghzg9RYymSIxnbwe41LpOPx76mA9f6mQYZO77c/Ij
        u14kEgfaVM9PxxBw8KpEkg5NvmBVPAfxFbFrcLoKB8lVW8MTpp3mQ8r0257PNORK
        bQOC+HHktQN3AJrsgN/Oj4OduM+hMtnPUdWa0X7uOOKRFW9r5CbuYga134EzoHG3

        -----END PGP MESSAGE-----
        ```

- #### Step 4: Decryption

  The last step is for Tim to send his encrypted message over to Julie, so she can decrypt it with her private key.

    - Once Julie receives Tim's encrypted message, she will save it in a directory and then run decryption commands against the file.
    
    - The command that Julie will use to decrypt Tim's encrypted message is:
    
      `gpg --output Tims_decrypted_message --decrypt Tims_encryptedmessage.txt`
          

      - `gpg`: The command to run gpg.
      - `--output Tims_decrypted_message`: This creates an output file, which is the decrypted message.
      - `--decrypt Tims_encryptedmessage.txt`: This is indicating to decrypt and what file to decrypt.
          
    - Run the command. It just decrypted Tim's message and placed the results into a file called `Tims_decrypted_message`.
    
    - Preview the decrypted file by running:
    
      - `cat Tims_decrypted_message`
            
    - This shows that now Julie can see Tim's plaintext message:
    
      - "Hi Julie, my bank account number is 2783492."
    
Summary: 

  - This walkthrough illustrated the steps for asymmetric encryption and decryption.

  - While it may seem complicated at first, the best way to understand them is to apply them yourself.
                
  
### 09. GPG Activity 

- [Activity File: GPG](activities/09_GPG/unsolved/readme.md)


### 10.  Review GPG Activity 

- [Solution Guide: GPG](activities/09_GPG/solved/readme.md)


### 11. Hashing and Data Integrity

Over the last several sections, we covered how cryptography can be applied to protect the privacy and confidentiality of data with symmetric and asymmetric encryption.

- Cryptography can also be applied to protect the **integrity of data**.

     - For example, a police investigator wants to present to a court a computer file as evidence. 
   
     - The police investigator will want to also prove the file hasn't been modified or tampered with since it was collected.
   
     - This is to prove to the court that the integrity of the data has been protected.
     
**Hashing** is a cryptographic method for proving the integrity of data.
 
Hashing, like encryption, uses mathematical algorithms, called **hashing algorithms**, to take data and generate a unique output.
 
We will show how hashing works with a simple hashing demonstration:

  - W will use the following plaintext sentence:
  
     - I Love Cryptography!
  
  - When we apply a **hashing algorithm** to this sentence, we get:
  
      - `676e4bff90a76853bda00773f7ad4bed`
  
  - This is an MD5 hashing algorithm.
 
- At first glace, hashing may look similar to encryption, as you are unable to understand the resulting message.

It is important to understand that hashing and encryption actually have several significant differences:

1. Encryption takes plaintext and converts it to ciphertext with a key and an algorithm.

    - Hashing takes plaintext and converts it into a **message digest** with an algorithm and no key. 

        - A message digest, also known as a fingerprint, hash, or checksum, is a unique identifier of the plaintext which is outputted from a hashing algorithm.

        - In the example, the message digest was `676e4bff90a76853bda00773f7ad4bed`.  
 
2. With encryption, plaintext gets converted into ciphertext, and then gets returned back to plaintext with decryption.

    - With hashing, once the plaintext gets converted into a message digest, it cannot be converted back into plaintext.

      - In other words, `676e4bff90a76853bda00773f7ad4bed` is irreversible, and can never be converted back to "I Love Cryptography!"

      - This is why hashing is called a **one way function**.
     
3. With encryption, the input can be any length and the output can be any length with a specific algorithm.

    - With hashing, the input can be any length and the output has a fixed length with a specific hashing algorithm.
     
4. The primary goal of encryption is privacy. The primary goal of hashing is integrity.
  
Integrity is accomplished with hashing:

  - If a small change is made to the sentence, the same hashing algorithm would produce a completely different message digest.
    
  - This would indicate the integrity of the data was compromised.
  
  - For example, if we add a second exclamation point to our sentence—`I Love Cryptography!!`—and apply the same hashing algorithm, the message digest would be significantly different, indicating the data had been modified:
   
    - `4e6fc433ff57a6c4a854cbbeff65f61a` 
          
    
    - `I Love Cryptography!`  = `676e4bff90a76853bda00773f7ad4bed`
    
    - `I Love Cryptography!!` = `4e6fc433ff57a6c4a854cbbeff65f61a` 
                 
While the above example shows a simple sentence, cybersecurity professionals apply the same hashing concept to much larger sets of data such as files, website code, emails, databases, and computer hard drives.
  
- In these larger sets of data, even the smallest change would result in a significantly different message digest.

We covered that encryption has common algorithms, such as AES, DES, and RSA.
  
  - Hashing has several hashing algorithms we should be familiar with, such as:
  
    - **SHA** (Secure Hash Algorithms), which include its successors, SHA1 and SHA2.
  
      - SHA2 has variations, with different security strengths: SHA-256 and SHA-512.
  
     - **MD** (Message Digest) has several variations: MD2, MD4, and MD5.
  
     - **LM** and **NTLM** are hashes used by Windows.
  
While each of these hashing algorithms have different mathematical formulas, they are all used to convert plaintext into a message digest.

- The easiest way to get familiar with the behavior of the various hash algorithms is to use them!

#### Creating Hashes on the Command Line  
     
While these hashing algorithms have complex mathematical formulas, there are command-line tools that easily create message digests with a simple terminal command.

We will be using two command line tools to create hashes: `md5sum` and `sha256sum`.
  

- Running `md5sum` uses the MD5 hashing algorithm to create a message digest from a plaintext message.

- Running `sha256sum` uses the SHA-256 hashing algorithm to create a message digest from a plaintext message.
    
We will apply these commands against a new file called `secretmessage.txt`.
  
  - First, create a basic message inside the file, such as: "This is my first hashing activity."
  
  - Run the following command:

    - `echo "This is my first hashing activity" > secretmessage.txt`

In order to create an MD5 message digest of the new file, we will use the following command:

- `md5sum secretmessage.txt > hashes.txt`
    
    - `md5sum`: The terminal command to run the MD5 algorithm.
    - `secretmessage.txt`: The file to be hashed.
    - `> hashes.txt`: The output file where the message digest is placed.
    - This last command is optional. If removed, the message digest will display back on the command line.
    
- Run the command. A file containing the message digest, called `hashes.txt`, has been created.

   - Preview the file by running:

     - `cat hashes.txt`

   - The results should show:

      - `bdbd28dbb5f51abb282ecd0b9daa3e69  secretmessage.txt`

   - This shows the message digest and the file where the message digest originated from.  

`md5sum` can also be used to check the integrity of the file.

  - In other words, it will check to see if the file has been modified since the message digest was created.
 
We will demonstrate how to do this by making a change to the `secretmessage.txt` file.

- Modify the `secretmessage.txt` file by overwriting it with the following command.

  - `echo "This is my second hashing activity" > secretmessage.txt`
     
- Next, we will run the `md5sum` check command to validate the integrity of the file.
  
    - `md5sum -c hashes.txt > md5check.txt`
    
      - `md5sum`: The terminal command to run the MD5 algorithm.
      - `-c`: The option to have `md5sum` check the hashes.
      - `hashes.txt`: The file the check is being run against.
      - `> md5check.txt`: The output file where the results of the check are placed.
  
  - The command works by:

      - Looking in the `hashes.txt` file for the file name and associated message digest.

      - Running the MD5 hash again on the files in the current directory and checking to see if the message digests still match.
  
  - Run the command. It immediately confirms that one of the message digests (or checksums) didn't match:

      - `md5sum: WARNING: 1 computed checksum did NOT match`
      
  - Preview the output file to confirm which file failed the check:

      - `cat md5check.txt`
        
  - The results should clearly show the file that was modified:

      -  `secretmessage.txt: FAILED`
       
`md5sum` uses the MD5 hashing algorithm and the exact same steps can be accomplished with the SHA-256 algorithm by simply replacing: 

  - `md5sum` with `sha256sum`
        
Summary: 

  - While encryption is used for confidentiality, hashing is used for integrity.

  - Hashing uses hashing algorithms to create message digests from plaintext.

  - A small change in the plaintext causes a significant change in the message digest.

  - Common hashing algorithms are SHA1, SHA2 and MD5.

  - `md5sum` and `sha256sum` are command-line tools used to create message digests and check the integrity of files.
       
  
### 12. Generating Hashes Activity

- [Activity File: Generating Hashes](activities/13_Generating_Hashes/unsolved/readme.md)
- [Current and Backup Evidence Files](resources/Alphabet_Bandit_Investigation_Reports.zip)

### 13. Review Generating Hashes Activity 

- [Solution Guide: Generating Hashes](activities/13_Generating_Hashes/solved/readme.md)

### 14.   Digital Signatures

So far, we have covered how the cryptographic process of encryption is used for confidentiality and the process of hashing is used to verify integrity.

- Cryptography can also be used to validate **authenticity**.

  - For example, an accounting representative at an organization receives a message from their CEO to wire funds immediately to a location in Asia.

  - The accounting representative needs to validate the message is authentic and actually from the CEO.
  
  - If the accounting representative wires the funds before finding out the message was from a scammer and thus inauthentic, this could have a significant financial impact on the organization.
          
- There is a cryptographic process used to verify authenticity that can assist with this example and much more, called **digital signatures**.

  - A digital signature is a mathematical scheme for verifying the authenticity of digital data.

  - While its primary purpose is for authenticity, it can also provide non-repudiation and integrity.

  - In the United States and several other countries, digital signatures are considered legally binding, similar to a standard signature.
 
Like asymmetric encryption, digital signatures also use public key cryptography, except digital signatures use public and private keys in reverse.

#### Digital Signature Walkthrough
  
We will illustrate how digital signatures work with public key cryptography with the following scenario:

Tim wants to send Julie a message that says "Transfer $500 to the account I provided to you." He also wants to digitally sign the message so Julie knows it originated from him and is authentic.
 
- **Step 1:  Key Creation**
   
  - We previously created a key pair for Julie, but we now will create a key pair for Tim.
                    
- **Step 2: Creating the Message**  
  
  - Tim places his message in a file called `Tims_message.txt`.
  
- **Step 3: Signing the Message**

  - Tim signs the message with his private key to create a digital signature.

    **[`Tims_message.txt`]** signed with **[Tim's private key]** = **[Tim's digital signature]**
    
  - This step is critical to understand:

     - Encryption uses the recipient's public key to encrypt.   
  
     - Digital signatures use the sender's private key to sign.
    
- **Step 4: Sending the Message and Signature**  
  - Tim sends the digital signature to Julie along with his plaintext message.
  
      - Julie will receive **[`Tims_message.txt`]** and **[Tim's digital signature]**
  
- **Step 5: Validating the Signature** 
  
  - After Julie receives Tim's digital signature and Tim's message, she will grab Tim's public key from Tim's website to validate the signature.
    
    - **[Tim's digital signature]** + **[`Tims_message.txt`]** validated with **[Tim's public key]**  
    
  - Julie will use a signature validation program, such as GPG, to validate the message is authentic based on the signature.
    
  - The program will either:

      - Confirm the message is authentic and came from Tim.
      - Deny, if the message is inauthentic and didn't come from Tim.
      
This scenario shows how digital signatures can be also used for integrity and non-repudiation:

 - Integrity: If Tim's message was modified, the digital signature validation would fail.
 - Non-Repudiation: Tim would not be able to deny he was the one who signed the message.
   
This walkthrough illustrates one of the ways digital signatures can be used to verify a message's authenticity. This method is called a **detached signature**.

  - It is called a detached signature because the message and the signature are sent separately and not attached to each other.

- Other digital signature methods can include:

    - **All at once**, referring to a signature appended to an encrypted message.

    - **Clearsigned**, referring to a signature appended to an unencrypted message.

    - **Signed hash**, meaning that instead of signing a message, a hash is created first and the hash is signed for verification.
    
### 15. Signing with GPG 

IIn the next demonstration, we will illustrate how to apply a detached digital signature with the same GPG program used for GPG asymmetric encryption.

  - We will conduct this demonstration with the scenario of Tim signing a message for Julie stating: "Transfer $500 to the account I provided to you."

#### Walkthrough

- **Step 1: Key Creation**
   
  - Since we've only created a key pair for Julie, we will now create one for Tim with the same commands:
    
    - `gpg --gen-key`
    
  - After pressing Enter, Tim will be prompted with the same questions:
    
     - Real name: What the user will name their key. We will use *Tim Doe*.
     
     - Email address: The email associated with the key. We will use tim@email.com.
     
     - `Change (N)ame, (E)mail, or (O)kay/(Q)uit?`: Enter `O` to confirm your information.
     
     - Passphrase: A password to protect your private key. Any time the private key is used, the passphrase will be checked.
       - Select any passphrase, just take note of what it is, as it will be used later.

  - Tim will also export his public key with the following command:
  
    - `gpg --armor --output tim.gpg --export tim@email.com`
  
  - Tim will put his public key, `tim.gpg`, on his website for anyone to use.    
                            
- **Step 2: Creating the Message** 

  - Tim will place his message in a file called `Tims_message.txt`.
    
    - Run the following command to create the file containing the message:
    
      `echo "Transfer $500 to the account I provided to you" > Tims_message.txt`
  
- **Step 3: Signing the Message**

  - Next, Tim will sign the message with his private key to create a detached digital signature.

      - Use the following command to sign the message:

        - `gpg --output Tims_signature --armor --detach-sig Tims_message.txt`

            - `gpg` runs the GPG command.
            - `--output Tims_signature` specifies the output file that contains the digital signature.
            - `--armor` outputs the signature in an ASCII format.
            - `--detach-sig Tims_message.txt` specifies that a detached signature will be created against the file `Tims_message.txt`.

- Run the command. Since digital signatures automatically use your private key, GPG will prompt you to put in the password used to create your key pair.
   
- Enter the password. A separate digital signature called `Tims_signature` has just been created.
   
  - Preview the Signature by running the following command:
      
      `cat Tims_signature`

- The signature should look like the following:  
  ```
        -----BEGIN PGP SIGNATURE-----

        iQGzBAABCgAdFiEEObK9bJPh5j6MAEGD/pGventOwmcFAl3pGKoACgkQ/pGventO
        wmdPfQv8CigGztcvrdbZrJVr91mPiLL5cry7nKYDAsRqkyIDltiJMxtggVbCtSPm
        YLfqZATWYofBWdE4wkpmeYE96gXTeJP4VVNUpwnshg1A1q0att10S+rlv6N73g4V

        -----END PGP SIGNATURE-----
  ```
      
- **Step 4:  Sending the Message and Signature**  

  - Tim will send the digital signature file to Julie along with his plaintext message.
    
  - Julie will receives `Tims_signature` and `Tims_message.txt`. 
                
  - Julie needs to place both files in the directory where she is running the verification.
     
  
- **Step 5: Validating the Signature**

  - After Julie receives Tim's digital signature and Tim's message, she will grab Tim's public key from Tim's website to validate the signature.
  
  - For Julie to verify Tim's message, Julie will need to import Tim's public key that she got from Tim's website with the following command:
      
      - `gpg --import tim.gpg`

  -  For Julie to validate Tim's signature, the following command will be run:
  
     - `gpg --verify Tims_signature Tims_message.txt`
        
  - Run the command to verify that the signature is valid:

    ```
    gpg: Signature made Thu 05 Dec 2019 09:48:10 AM EST
    gpg:                using RSA key 39B2BD6C93E1E63E8C004183FE91AF7A7B4EC267
    gpg: Good signature from "Tim <tim@email.com>" [ultimate]
    ```

We will now show how digital signatures with GPG can be used to not only validate the authenticity, but also the integrity.

- **Step 1: Modifying the Message**
   
  - We will run the following command to modify the amount of money specified in the message:
                                                    
    `echo "Transfer $34,547 to the account I provided to you" > Tims_message.txt`
  
- **Step 2: Validating the Signature Again**
   
  - Run `gpg --verify Tims_signature Tims_message.txt`
    
  - This now clearly shows the the signature failed.

    ```    
    gpg: Signature made Thu 05 Dec 2019 09:48:10 AM EST
    gpg:                using RSA key 39B2BD6C93E1E63E8C004183FE91AF7A7B4EC267
    gpg: BAD signature from "Tim <tim@email.com>" [ultimate]
    ```

This walkthrough showed how to do a detached digital signature. There are other methods of digital signatures that can also be accomplished with GPG.

  - If you are interested in learning other digital signature methods, they can visit [The GNU Privacy Handbook entry on making and verifying signatures
](https://www.gnupg.org/gph/en/manual/x135.html).

Summary: 

- While encryption is used for confidentiality and hashing is used for integrity, digital signatures are used for authentication, non-repudiation, and integrity.

- A digital signature is a mathematical scheme for verifying the authenticity of digital data.

- Like encryption, digital signatures also use public key cryptography.

  - However, in the case of digital signatures, a user uses their own private key to sign a document, and the public key would be used by other users to validate the signature.

- There are several types of digital signatures available: detached signatures, all at once, and clearsigned.

- GPG is a command-line tool which can apply these digital signature methods.


### 16. Digital Signatures Activity

- [Activity File: Digital Signatures](activities/17_Digital_Signatures/unsolved/readme.md)
- [Messages from Captain Strickland](resources/Stricklands_messages.zip)
- [Captain Strickland's Public Key](resources/Public_Key)

### 17. Instructor Do: Review Digital Signatures Activity (0:05)

- [Solution Guide: Digital Signature](activities/17_Digital_Signature/solved/readme.md)

-------

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

## 10.3 Student Guide: Applied Cryptography and Cryptographic Attacks

### Overview

In today's class, we will explore how cryptographic concepts are applied to modern technology and security challenges.  

### Class Objectives

By the end of class, you will be able to:

- Apply steganography in order to hide a message within non-secret data, such as an image.

- Use SSL certificates to help authenticate a website. 

- Use cryptographic attack methods to crack a password.

- Use Hashcat to uncover the plaintext value of a hash.
  

### Slideshow

The lesson slides are available on Google Drive here: [10.3 Slides](https://docs.google.com/presentation/d/1Y_Ar8rbile-7ENbOvUiGiISX8MmUwJeFfdpBscDuQXw/edit#slide=id.g4f80a3047b_0_990)

-------

### 01. Class Overview 

Before we introduce new cryptography concepts, let's review the concepts covered in the previous lesson:

**Asymmetric Encryption**

- While symmetric encryption has many advantages, its primary disadvantages are key exchange and key management.

- As an alternative, we can use **asymmetric key encryption**, also known as **public-key encryption**, in which each individual has a two-key pair.

- The two-key pair consists of:
  - A **public key**, which can be seen and shared with anyone.
  - A **private key**, which should be kept private and only seen by the owner of the key pair.

- For encryption, the sender of a message uses the receiver's public key to encrypt a message.

- For decryption, the receiver of the encrypted message uses their private key to decrypt the message.

- **RSA** is the most widely used asymmetric key algorithm used today.

- **GPG** is a command-line tool that can apply asymmetric encryption.

**Hashing**

- While encryption is used to protect confidentiality, hashing is a cryptographic method used to protect integrity.

- Hashing uses algorithms to convert a plaintext message into  a **message digest**, also known as a **hash**.

- Data that has been hashed cannot be reversed, therefore it is known as a **one-way function**.

- Common hashing algorithms are **MD5** and **SHA256**.

- Command-line tools that can be used to create hashes are **`md5sum`** and **`sha256sum`**.

**Digital Signatures**

- A **digital signature** is a mathematical scheme for verifying the authenticity of digital data.

- The primary purpose of digital signatures is authentication, but they can also be used for integrity and non-repudiation.

- Like encryption, digital signatures also use public key cryptography.
  - However, a user uses their own private key to sign a document, and the public key is used by other users to validate the signature.

- There are several types of digital signatures available: **detached**, **all at once**, and **clearsigned**.


### 02. Cryptography Refresher 

- [Activity File: Cryptography Refresher](activities/02_Cryptography_Refresher/unsolved/readme.md)

### 03. Cryptography Refresher Review

- [Solution Guide: Cryptography Refresher](activities/02_Cryptography_Refresher/solved/readme.md)

### 04. Introduction to Applied Cryptography 

So far, we have covered many cryptographic concepts, such as encryption, public key cryptography, digital signatures, and hashing.

- Until now, we have primarily covered the foundations of these cryptographic concepts. 

- Now, we will now focus on how these cryptographic concepts are applied to modern technology and security challenges.

First, we will look at how these cryptographic concepts are applied to portable devices, emails, web security, and digital forensics.

**Portable Devices**

Encryption can be applied to securing portable devices such as laptops and cell phones.

- For example: An attorney has a laptop that contains all of his private legal documents. The attorney will need to know that if the laptop is lost and later found by someone who is not authorized to view the documents, that this person wouldn't be able to view them.

Most current operating systems on laptops include disk encryption.

  - This disk encryption is a symmetric encryption, which often uses the AES algorithm.

  - Microsoft Windows uses a symmetric disk encryption program called **BitLocker** and Mac operating systems use **FileVault** encryption.

  - These disk encryptions prevent an unauthorized party from viewing the data on a laptop in case it is accessed by someone it shouldn't be.

**Email and Web Security**
 
Public key cryptography can be used to secure emails and web applications. 

- Emails are not natively encrypted and therefore can be sent and received in plaintext.

- Programs such as **S/MIME** and **PGP** are used to make emails confidential by applying public key cryptography.

  - For example: A sender of an email can use PGP to encrypt an email with the receiver's public key. The receiver of the email can decrypt the email with their private key.

-  PGP and S/MIME are also used to digitally sign emails to provide authenticity and integrity.

  - For example: A sender of an email can use PGP to sign an email with their private key. The receiver of the email can verify the authenticity by validating it with the sender's public key.
  
Public key cryptography works for securing websites:

- **SSL** (Secure Socket Layer) is a protocol designed to provide encryption for web traffic.

  - The protocol HTTPS stands for _HTTP over SSL_.

- Websites are issued **SSL certificates** as a "seal of approval," confirming the website can be trusted.

- These certificates use public key cryptography to establish a secure connection between the browser and the server before the web traffic is encrypted with symmetric encryption.
 
Websites also use hashing to store their passwords. 

- Storing passwords in plaintext comes with risks.

  - For example, if a web server storing passwords in plaintext was breached by a hacker, the hacker would have access to the accounts and passwords for all the users of that website.

- Websites defend against this by using a hashing algorithm to hash the passwords of all users.

- This same algorithm is applied when a user logs in, then it is validated against the user's hashed password to provide authorization into the user's account.

  - This concept isn't just limited to website logins. It is also applied to server logins.
     
     
**Digital Forensics and Steganography**

A forensic examiner is a cybersecurity professional who is tasked with capturing and investigating digital evidence from computers, cellular phones, and other devices that contain digital data.

- This evidence can be used for private industry or public legal and criminal investigations.

- Forensic examiners often apply hashing.

  - For example: If a forensic examiner collects a hard drive from a laptop for an investigation, the examiner will immediately create a hash of the laptop.
  
  - This hash can be used by the examiner in legal proceedings to later prove that the hard drive they collected hasn't been modified since its original collection, proving the integrity of the evidence. 
  
Forensic examiners might also be tasked with using the cryptographic technique of **steganography**.

  - Steganography is the cryptographic technique of placing hidden messages within a file, image, or video.

    - For example, a forensic investigator is conducting an investigation on an employee who is suspected to be selling insider trading information.

    - The suspicious employee has no files that contain any obvious evidence of wrongdoing. Their laptop only contains pictures of their family.
     
      ![family](images/family.jpg)
     
    - The forensic investigator can apply steganographic forensic tools to analyze these family photos and determine if they contain hidden data related to insider trading.
    
       ![steg](images/steg.jpg)
  
We will do a brief walkthrough demonstrating how to apply the steganographic command-line tool **`steghide`** to hide a secret message in an image.

#### `steghide` Walkthrough

Begin by opening up a command line in your virtual machine.

- Create a file with a secret message by running:

      `echo "this is my hidden steganography message" > hidden_message.txt`

- Save the image `family.jpg` in this same local directory. 

Next, type the following command:
  
  - `steghide embed -cf family.jpg -ef hidden_message.txt`
    
    - `steghide` is the command to run `steghide`.

    - `embed` is the additional command to specify that we are hiding the message.

    - `-cf family.jpg` uses `-cf`, which stands for _cover file_, to specify the file that the data is being hidden in. In this example, we are using the file `family.jpg`.

    - `-ef hidden_message.txt` uses `-ef`, which stands for _embed file_, to specify the file that is being hidden. In this example, we are hiding `hidden_message.txt`.
  
  - Run the command and enter a password when prompted.
 
  - While it may look like nothing happened, the secret message is now hidden inside of the family picture.

- Now delete the hidden message so it will be kept secret and only exist in `family.jpg`.
 
  - Run `rm hidden_message.txt`
 
Next, we will demonstrate how to extract the secret message from the image. Type the following command:

- `steghide extract -sf family.jpg`

    - `extract` is the additional command to indicate we are extracting the message.

    - `-sf family.jpg` uses `sf`, which stands for _stegofile_, to specify which file to run the steganography tool against.

- Run the command and enter  the password when prompted. 

- Run `ls`. The file, `hidden_message.txt`, has been extracted from the image. 

Summary: 

  - Cryptographic concepts such as encryption, public key cryptography, and hashing have many modern day applications. 

  - Operating systems often use symmetric encryption programs such as BitLocker and FileVault to encrypt their hard drives.

  - Emails can use tools such as PGP and S/MIME to apply encryption, authentication, and integrity to emails.

  - Websites use public key cryptography to establish a secure session between a user's browser and the web server.

  - Forensic examiners use hashing to prove the integrity of the digital data they collect.

  - Steganography is a cryptographic technique used to hide data within messages, files, images, or video.

  - `steghide` is a forensic command-line tool used to apply these steganography techniques.   

### 05. Steganography Activity

- [Activity File: Steganography](activities/04_Steganography/unsolved/readme.md)
- [Image of the Car](https://tinyurl.com/y4m3zftl)

### 06. Review Steganography Activity 

- [Solution Guide: Steganography ](activities/04_Steganography/solved/readme.md)

### 07. SSL Certificates

We just covered several ways to apply cryptography with technologies and devices we use every day.

We will now dive deeper into one of the commonly used applications of cryptography: securing website applications.

  - For example, if Widgets Corp. wants to start a new secure website, widgets.com, to accept customer transactions, they would need to take certain steps to add the appropriate security to their website application.

The security of website applications is often accomplished with **SSL certificates**.

  - SSL certificates are small files of data that use public key cryptography to secure connections between the browser and the web server.

  - SSL certificates work with the HTTPS protocol.

  - SSL certificates can assist websites by providing them authentication and confidentiality.

Before we cover how SSL certificates provide authentication and confidentiality, we will look through the process of acquiring an SSL certificate for widgets.com.

#### Obtaining an SSL Certificate

- First, Widgets Corp will reach out to an organization responsible for issuing SSL certificates, called a **certificate authority** (CA).    

- Examples of certificate authorities include:
  - GlobalSign
  - DigiCert
  - Comodo
  - Symantec
      
Widgets will request an SSL certificate called an **X.509 certificate**.
  
  - X.509 is the current standard for SSL certificates for securing online communications.
      
Next, the certificate authority will require the following information from Widgets Corp in their application.

  - Company documents
  
    - This will help the certificate authority validate that the application was submitted by a legitimate representative of Widgets Corp, preventing scammers from getting a real certificate added to a fraudulent website.

  - Unique IP address

  - Certificate signing request (CSR) 

    - A **CSR** is a block of encrypted data that is created on the web server where the SSL certificate will eventually be installed. 

    - The CSR contains information that will be added to the certificate, such as the company name and location.

    - When generating the CSR, a private and public key pair will be created, and only the public key will be sent to the certificate authority.

    - The private key remains hidden on the web server.
    
 - After the certificate authority validates and approves the information provided in the application, they will send the SSL certificate back to Widgets Corp.
 
 - Widgets Corp will then install the SSL certificate on the web server where they are hosting widgets.com.
 
 - After this, anyone who views widgets.com will be able to see the SSL certificate installed on the website.
 
     ![widgets](images/widgets.jpg)
 
#### SSL Certificates and Authenticity

We will now demonstrate how SSL certificates can be used to validate the authenticity of a website.

  - For example: A user receives an email from their bank to go to the following website www.Superbank!!.com to update their credentials.

  - The user is a customer of Superbank, but they have never seen this website and aren't sure it's legitimate.

  - The user can check the SSL certificate of this suspicious website to determine if the website is in fact authentic.
  
Validating authenticity with SSL certificates is accomplished with a **chain of trust**:

- Browsers (such as Chrome and Internet Explorer) predetermine which certificate authorities to trust.
  
  - Browsers have a pre-established list of trusted CA's, called a **root store**.
  
  - In Chrome, we can access the root store by doing the following:
    
    - Go to **Preferences** > **Settings**.
    
    - Go to **Privacy and security** > **Manage certificates**.
    
     ![managed](images/managed.jpg)
    
    - Select **Trusted Root Certification Authorities**. 
    
    ![rootca](images/rootCA.jpg)
    
- This list contains a certain type of certificate authority called a **root certificate authority**, which your browser trusts.

    - Root certificate authorities are CAs at the top of the chain of trust and are typically not the organizations that issue SSL certificates.

- Next, select **Intermediate Certification Authorities**. 
  
     ![interca](images/InterCA.png)
     
    - Another type of CA is an **intermediate certificate authority**, which report up the chain of trust to the root certificate authorities. 
    
    - They typically issue SSL certificates on behalf of the root certificate authorities because it limits the risk exposure in the case where:

      - A root certificate authority was breached. In this case, every SSL certificate issued underneath it would be invalidated, including all certifications issued by intermediate certificates.

      - An intermediate certificate authority was breached. In this case, the impact would be limited to the certificates they issued.

  - If a website is issued a valid certificate from a CA that is not in the root store, your browser will warn you that the site isn't a trusted website.
  
**Valid Certificate Walkthrough** 
 
We will now walkthrough how to view and validate the SSL certificate for a website.
   
- We will view a valid SSL certificate for Google. 

- Begin by opening up a Chrome browser and going to [Google](https://www.google.com/).
   
   - Select the lock next to the URL of the website.
   
   - The following image confirms the SSL certificate is trusted.
    
      ![google1](images/google1.png)
      
- Next, select **Certificate (Valid)** to view the details of the certificate.

  - The following three important values from the details of the certificate:
    
    1. **Issued to** identifies the domain of the website that the certificate was issue to.
    2. **Issued by** identifies which certificate authority issued the certificate. This is typically the intermediate CA.
    3. **Valid from** identifies the date the certificate was issued and the expiration date.

    ![google2](images/google2.png)
      
      
- Next, select the **Certificate path**, which shows the the chain of trust for the certificate.
     
    ![google3](images/google3.png)
    
    1. **google.com** is the website that was issued the certificate.

    2. **GTS CA 101** is the intermediate certificate authority that issued a certificate to google.com.
    3. **Google Trust Services, Global Sign Root CA** is the root certificate authority that signed off on the intermediate certificate authority, GTS CA 101.
       
The chain of trust on the above certificate is:
- **google.com** is trusted by ...
  -  The intermediate CA of **GTS CA 101**, which is trusted by ...
     - The root CA of **Google Trust Services, Global Sign Root CA**, which is trusted by ...
        - The Chrome browser, as this root CA is in the root store. 
    

**Invalid Certificate Walkthrough**  
 
So far, we have only looked at a valid SSL certificate. Sometimes certificates aren't valid and your browser will warn you before you access the website.

Walkthrough the following steps to show an invalid certificate:

- Open the following website to display an invalid SSL Certificate: expired.badssl.com.

- The browser immediately displays several notifications on the URL and the main page.

  ![badssl](images/badssl.png)
  
- Next, we will click on **Not secure** next to the URL on the top left to view the certificate.  

- This page also clearly indicates that the website is not secure.

  ![badssl2](images/badssl2.png)
  
- Next, click on **Certificate (Invalid)** to display the details of the certificate.

  ![badssl3](images/badssl3.png)
  
- This shows that the certificate is invalid because it expired in 2015.

  - If you are interested in viewing additional invalid certificates, check out the website www.badssl.com. It has many invalid certificates that you can safely view.

 #### SSL Certificates and Privacy
 
We just covered how the browser and the user of a website use SSL certificates to validate the site's authenticity. We will now cover how a website uses SSL certificates to offer privacy by securing a user's web traffic.
   
- **Step 1**: When we access a website that is secure, the browser asks the web server to provide the details of the certificate.
  
  - These are the details we saw when we viewed the certificate details.
                
- **Step 2**: The server responds with the copy of its SSL certificate, and also provides the public key.
 
- **Step 3**: The browser validates the certificate by checking expiration date and the root CA.
 
- **Step 4**: Once the certificate is validated, the browser uses the server's public key to create, encrypt, and send a new key called a **session key**.

  - A session key is a key that is used to secure a communication session between two devices.

  - In this case, the two devices are the browser and the web server.

- **Step 5**: The server decrypts the session key with its private key and sends back an acknowledgement encrypted with the session key to begin the encrypted session.

- **Step 6**: Now that secure web traffic can begin, the server and browser encrypt and decrypt all data with the session key.

An important concept to understand from the above steps is that accessing an HTTPS site uses both asymmetric and symmetric encryption.

   - This is a common cybersecurity interview question.

   - More specifically, steps one through five use asymmetric methods and step six uses symmetric methods.
   
      
   - SSL certificates were originally used to work with the SSL cryptographic protocol, but SSL was later replaced with a more secure cryptographic protocol called **TLS (Transport Layer Security)**.
   
   - Even with this change, the certificates are still considered SSL certificates.
   
   - If you are interested in researching this topic further, consult the following article: 
    
      - [GlobalSign: SSL vs TLS - What's the Difference?](https://www.globalsign.com/en/blog/ssl-vs-tls-difference/)
 
 
Summary: 

  - One of the most common applications of cryptographic concepts is the securing of website traffic.

  - Website traffic is typically secured with an SSL certificate.
    - X.509 is the current standard for SSL certificates.

  - Certificate authorities, or CAs, are the organizations responsible for issuing SSL certificates.

  - Root certificate authorities, or root CAs, are at the top of the certificate chain, and don't usually issue SSL certificates directly.

  - Issuing SSL certificates is accomplished by intermediate certificate authorities, which report up to root CAs.

  - Validation of certificates is accomplished by the chain of trust.
    - For example: Your website has to be trusted by the intermediate CA, which must in turn be trusted by the root CA.

  - Even if a certificate has been issued, a website can be considered invalid if the certificate is:
     - Expired.
     - Assigned to the wrong host.
     - Issued by a CA that is not in the browser's root store. 

  - Websites use both asymmetric and symmetric encryption to accomplish secure communication with the HTTPS protocol.   
  

### 08. SSL Certificates Activity

- [Activity File: SSL Certificates](activities/07_SSL_Certificates/unsolved/readme.md)
- [Homepage of the Suspicious URL](https://view.genial.ly/5defb03224596c0fff13c3a2/interactive-image-interactive-image)

- If the website isn't accessible, share the offline version:
  - [Offline Hill Valley PD Website](resources/Hillvalley_offline_webpage.zip) (To view it, simply extract all the files in the folder and open `genially.html`.) 


### 09. Review SSL Certificates Activity 

- [Solution Guide: SSL Certificate](activities/07_SSL_Certificates/solved/readme.md)

### 10. Cryptographic Attacks

Now, we are going to change topics and discuss **cryptographic attacks**.

- We have so far covered multiple methods and technologies that provide individuals and organizations with privacy, authenticity, integrity, and non-repudiation (The P.A.I.N model).

- Unfortunately, determined adversaries often find ways to attack these methods through **cryptographic attacks**. 

  - As an example, a hacker might try to crack a bank's encrypted files containing credit card data to sell on the dark web.

- It is important for cybersecurity professionals to understand and be able to conduct these same cryptographic attacks to determine if a cryptographic method is secure.

  - For the example above: A security professional would want to attempt the same cryptographic attacks against the encrypted files that they anticipate might be used by a hacker. This would help them determine if the credit card data is in fact secure. 

Next, we will cover several types of cryptographic attacks and the mitigation strategies used to counter them. 

#### Statistical Attack 

- A **statistical attack** exploits weaknesses associated with statistics in a cryptographic algorithm.

  - There are many cryptographic algorithms that attempt to produce truly random values. 

  - A statistical attack attempts to determine if the values being created are in fact not random and are instead predictable.

    - For example: Some technology professionals use a token generation program that creates a random number that they use to securely log in to their computer.
    
       ![RSA_token](images/RSA.jpg)
       
    - If the number generated is in fact predictable and not random, a hacker could determine the number and access unauthorized data.
  
- **Mitigation**

  - A security professional needs to be sure that algorithms that use random values continue to produce values that are in fact random, so the data is not predictable.

#### Brute Force Attack 

- A brute force attack is when an attacker simply uses many passwords or user/password combinations until one of them works.

  - For example: If a hacker wants to log in with the user `root`, they would try the user `root` with many passwords until they guess correctly:
    - User: root, Password: abc123
    - User: root, Password: 123abc
    - User: root, Password: 123456
    - User: root, Password: 654321
    - User: root, Password: aaaaaa
    - User: root, Password: bbbbbb

- **Mitigation**
    - A security professional can apply the lockout functionality to all logins, which will limit the number of login attempts a user has before getting locked out.

    - Applications can also have firewalls that detect and stop large volumes of attempted logins from a single source IP address.

#### Birthday Attack

- A birthday attack exploits the probability (and weakness) that two separate plaintexts that use a hash algorithm will produce the same ciphertext. 

  - This same ciphertext is also known as a **collision** or a **hashing collision**. 
  
  - The birthday attack is named after a probability theory called the Birthday Paradox, which states that for a given number of people there will always be two that share a birthday.
    
    - If you are interested in reading more about the Birthday Paradox, send them the following resource: [Birthday problem (Wikipedia)](https://en.wikipedia.org/wiki/Birthday_problem).

- **Mitigation**

   - Use a strong hashing algorithm that limits the possibilities of a hashing collision.

#### Frequency Analysis

Frequency analysis involves an attacker looking at the ciphertext of a substitution algorithm and trying to determine which ciphertext letters appear most frequently.

  - Since the most common letters in the English language are e, t, o, and a, the attacker substitutes the frequently occurring letters with the common English language letters to determine the substitution algorithm key.

  - Once the key is figured out, the hacker can determine the plaintext from the ciphertext.

  - Additionally, if the common letters in the ciphertext are actually e, t, o, and a, the hacker can determine that the ciphertext is likely using a transposition cipher.

- **Mitigation**
    - This method typically targets standard ciphers. Using more advanced encryption algorithms will better protect against this attack.

#### Replay Attack

In a replay attack, an attacker intercepts an encrypted message and replays it to the receiving party to get access.

  - For example: An attacker can obtain an encrypted signal from a garage door opener. The attacker can replay the encrypted signal at a later time to open the garage.
  
- **Mitigation**
  - Add an expiration time for the encrypted data so it can't be replayed at a later time.

#### Known-Plaintext

In this method, the attacker has access to the ciphertext and the associated plaintext.

- The attacker does not have access to the encryption device or program.

- The attacker does an analysis to determine the encryption/decryption algorithm of the ciphertext and plaintext data to determine future encrypted messages.

- For example, suppose a hacker captured the following plaintext and ciphertext:
    
   - Plaintext: **hello**, ciphertext: **8 5 12 12 15**

   A hacker could analyze this data and determine that each alphabet letter corresponds to a number in alphabetical order, where:
    
  -  a = 1, b = 2, c= 3, etc. 

    If a future message comes through as: **7 15 15 4 2 14 5** the hacker can decrypt it as: **goodbye**. 

- **Mitigation** 
  - Use an advanced encryption algorithm and limit the access to ciphertext and associated plaintext.

#### Chosen-Plaintext

In a chosen-plaintext attack, an attacker has access to the encryption device and program and the ciphertext, but not the associated plaintext.

  - The attacker can encrypt several plaintext messages to see how the ciphertext is generated each time.
  
  - Based on the results of the different ciphertexts generated, an attacker can determine the algorithm and apply it in reverse to obtain the plaintext from the acquired ciphertext.

- For example: We obtain a ciphertext of **act** along with an encryption program that can create this ciphertext.
  
  We can then enter several plaintexts into the encryption program to analyze the results:
    - plaintext: **boy**, ciphertext: **oby**
    - plaintext: **red**, ciphertext: **erd**
    - plaintext: **hot**, ciphertext: **oht**
    
   Based on these results, we can conclude that this is a transposition cipher using the key: {1, 2, 3) = {2, 1, 3}
   
   - If we apply this key in reverse to **act**, we can determine the plaintext is **cat**.
   
- **Mitigation**: 
  - Limit access of the encryption device and use an advanced encryption algorithm.
    

Summary

  - Attackers use a variety of cryptographic attacks to compromise cryptographic methods and algorithms.

  - Cybersecurity professionals also use these same cryptographic attacks to determine the security strength of the cryptographic methods being used.

  - Cryptographic attack types include statistical, birthday, brute force, frequency, replay, known-plaintext, and chosen-plaintext attacks.

  - With each of these attacks, there are also measures that security professionals can use to protect from them.
  

### 11. Cryptographic Attacks Activity  


- [Activity File: Cryptographic Attacks](activities/11_Crypto_Attacks/unsolved/readme.md)
- [Detective Tannen's Password Encryption Script](resources/encrypter.py)
- [Detective Tannen's Computer Login](resources/password.py)


### 12. Review Cryptographic Attacks Activity 

- [Solution Guide: Cryptographic Attacks](activities/11_Crypto_Attacks/solved/readme.md)

### 13. Introduction to Rainbow Tables and Hashcat 

We just covered many techniques that can be used to attack cryptographic methods.
 
 - The last activity demonstrated that some of these attack methods can be applied with manual methods and deductive reasoning.
 
 - Cracking other types of cryptography can require more advanced methods and technologies.
 
One type of cryptography that requires an advanced cracking method is **hashing**.

  - Hashing is a cryptographic method that uses a mathematical algorithm to create a one-way ciphertext, which can not be reverted back to its original plaintext.

  - Since hashing creates a one-way ciphertext, it is almost impossible to decipher the algorithm and figure out the plaintext from the ciphertext.

A different approach can be used to crack hashes: a cryptographic method called rainbow tables.

#### Rainbow Tables
 
**Rainbow tables** are resources that contain precomputed hashes with the associated plaintext password.

- For example:
  
  ![rainbowtables](images/rainbowtable.png)
  
- Typically different hashing algorithms have different rainbow tables.
  
  - For example, there may be a a MD5 rainbow table, and a NTLM rainbow table.

- The advantage of using rainbow tables is that finding the correct password is as "simple" as looking up the password associated with a given hash.

- One disadvantage is that some rainbow tables are extremely large, and take a lot of storage space and computing power to work effectively.
   
A defense against rainbow tables is the cryptographic method known as salting.

- A **salt** is simply a random value.

- **Salting** is a cryptographic method that combines the salt with the plaintext into the hash function.

  - The output value of salting is called a **salted hash**.

  (**plaintext** + **salt**) run through (**hashing function**) = **salted hash**  

  - Therefore, a unique output is created for each plaintext/salt combination.

 
#### Hashcat
 
Although we've talked about John the Ripper in the past, to make you a more versatile candidate, we'll be looking at another hash cracking program called hashcat.  
 
**Hashcat** is a command-line tool that can automate the cracking of hashes.

   - Hashcat is available as a free download.

   - Hashcat uses dictionary wordlists, rainbow tables, and brute force methods to figure out plaintext passwords from hashes. 

   - Hashcat works with a variety of hashing algorithms.
   
We will demonstrate how to use Hashcat to crack a hash with the following scenario:

  - A cybersecurity professional is tasked with testing the security of a company's website by confirming if they can log into their website as the root user.

  - The security professional is able to conduct an attack on the website. With this attack, they capture an unsalted hash value of the root user's password: `ea847988ba59727dbf4e34ee75726dc3`.

  - From the length of the hash, they determine it is an MD5 hash.

  - The walkthrough will demonstrate the steps necessary to determine the root user's plaintext password with Hashcat.

**Hashcat Walkthrough**

- Begin by accessing the following directory in your virtual machine:
  
  - `/usr/share/wordlists/`

- Within this directory, there is a large wordlist file called `rockyou.txt` that contains a large list of common plaintext passwords.

  - If the file is zipped, it can be unzipped by running the following command: `gunzip rockyou.txt.gz`

- Preview the file by running the following command:

  - `more rockyou.txt`

- It should display a list of common plaintext passwords, such as:

  ```  
  123456
  12345
  123456789
  password
  iloveyou
  princess
  1234567
  rockyou
  ...
  ```

- This list is a dictionary list of common passwords. It does not contain hashes like a rainbow table, only the plaintext passwords.

  - Hashcat will use this plaintext list and, depending on which hash algorithm is selected,  compute hashes against each of these plaintext words.

- The next step is to place the hash we want to crack into a file. 

  - We will place this into a file called `hashes.txt`:
  
    - ` echo ea847988ba59727dbf4e34ee75726dc3 > hash.txt`
  
  - We can add multiple hashes to this file, as long as each hash is on a separate line.
      
- Next, we will type the following Hashcat command to crack this hash: 

  - `hashcat -m 0 -a 0 -o solved.txt hash.txt rockyou.txt --force`

    - `hashcat`: The command to execute Hashcat.

    - `-m 0`: The `0` indicates the script will use the MD5 hash, as this was the hash the security professional determined to be in use.

        - If a different hashing algorithm is in use, we would change the value of `0`.

        - For example: We would use `-m 100` for SHA-1, and `-m 1400` for SHA-256.
        
    
    - `-a 0`: The `0` tells the script to apply the attack method of "dictionary."
        - The above link provides additional attack types.

    - `-o solved.txt`: Creates an output file called `solved.txt`.

    - `hash.txt`: The input file of the hash.

    - `rockyou.txt`: The file containing the wordlist we will check against.

    - `--force`: Overrides any small errors that may occur.
    
- Run the command to place the results in the file called `solved.txt`.

- Open the `solved.txt` file and note that it displays the hash and the plaintext value of the hash separated by a colon: `ea847988ba59727dbf4e34ee75726dc3:topsecret`

- With this combination, the cybersecurity professional can determine the root user's password is `topsecret`.

- They are now able to log into the website with these credentials.
  
Summary: 

  - Some cryptographic attack methods require advanced methods and technologies to crack.

  - A popular advanced cryptographic method for cracking hashes are rainbow tables.

  - Rainbow tables contain precomputed hashes with the associated plaintext password. 

  - One defense against rainbow tables is salting, which adds a random value to the plaintext value during the hashing process.

  - Hashcat is a free command-line tool which can automate the process of using dictionary, brute force, and rainbow table attacks against hashes.


### 14. Hashcat Activity 

- [Activity File: Hashcat](activities/14_Hashcat/unsolved/readme.md) 
- [Encrypted File from Detective Tannen's Computer](resources/secret.zip)
  


### 15. Hashcat Activity 


- [Solution Guide: Hashcat](activities/14_Hashcat/unsolved/readme.md)


-------

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
