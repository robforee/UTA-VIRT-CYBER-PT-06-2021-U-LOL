.. Encryption
... purpose of encryption
the purpose of encryption is privacy

.. Decryption

.. Caesar Cipher
.. what kind of encryption is the Caesar Cipher
the caesar cipher is a substitution cipher

.. Encoding 
... what is the purpose of encoding
purpose of encoding is integrety
... common use of encoding
common use of encoding is to transform digital text to binary data
... what online tools are available for encoding/decoding
[Browserling](https://www.browserling.com/tools/binary-to-text)
[Rapid Tables](https://www.rapidtables.com/)


.. Binary Encoding
... how many bits in a byte
a byte is equal to 8 bits
each byte can represent a decimal (0-255 for a count of 256)
binary to decimal encoding translates bytes to decimals

.. ASCII Encoding
ASCII represents every upper and lowercase letter of the english alphabet
as well as common punctuation marks and graphic and mathematical symbols

.. Hex and Octal Encoding
Hexidecimal composed of 0-9 + A-F

.. Decoding

.. Cryptography

.. what is the P.A.I.N model
Privacy, Authentication, Integrity, Non-Repudiation
privacy when data at rest, data in motion

.. Stream Cipher
apply algorithm on bit or character at a time
eg Ceasar Cipher

.. Substitution Cipher
eg Caesar and Enigma

.. Block Cipher
apply algorithm to chuncks of characters
eg Transposition Cipher

.. Transposition Cipher
breaks message into blocks and rearranges the letters of each block

.. key space
a range of number that hand be used for a specific algorithm
eg key of 1 digit has a keyspace of 10
defined by bit size

.. how much more secure is X more bits of encryption
for each bit added, the key space doubles
calculate space as 2^[bit-size]

.. Symmetric Encryption
symmetric key algo use a single, shared key to encrypt and decrypt
shared key is also referred to as a private key
... common symmetric key algorithms
DES, 3DES and AES
.... DES (1977)
uses a 56-bit key
many flaws
.... 3DES
.... AES (1997)
Advanced Encryption Standard (1997)
the Rijndael cipher
offers multiple strengths 128, 192 and 256-bits

.. Encryption


.. Open SSL
openSSL can encrypt and decrypt messages
... create the key and initialization vector
openssl enc -pbkdf2 -nosalt -aes-256-cbc -k mypassword >key_and_iv
.... read that
encryption, key-type, salting, cipher-name
... encrypting with OpenSSL
echo $msg | openssl enc -pbkdf2 -nosalt -aes-256-cbc -base64 -K <kkk> -iv <iviviv> >$enc-file
.... read that
encryption, key-type, salting, cipher-name, end-step-for-legability-base64

... decrypting with OpenSSL
echo $msg | openssl enc -pbkdf2 -nosalt -aes-256-cbc -base64 -d -K <kkk> -iv <iviviv> >$enc-file
.... read that
encryption, key-type, salting, cipher-name, end-step-for-legability-base64 decrypt


.. Key/IV
...
...

.. Public/Private Keys
.. Key Distribution
.. Hashing
.. Hashing Algorithms
.. Hashcat
.. Steganography
.. Steghide
