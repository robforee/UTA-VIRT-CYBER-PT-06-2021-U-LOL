 ````
 Cryptography
     Encoding
         Encoding is for
             common use of encoding
             what online tools are available for encoding/decoding
             Binary Encoding
                 how many bits in a byte
             ASCII Encoding
         Hex and Octal Encoding
     Encryption
         encryption is the process of using a cypher
         cipher is encryption algorithm
         cipher Types
             Stream Cipher
             Substitution Cipher
             Block Cipher
             Transposition Cipher
         Symmetric encryption ~ uses the same key to encrypt/decrypt
             DES (1977)
             3DES
             AES (1997)
             Using OpenSSL SYMMETRIC ENCRYPTION
                 create the key and initialization vector
                 send key, iv and message to recipiant
                 openssl asymmetric encryption 
                 openssl asymmetric decryption command
         Asymmetric encryption ~ uses public-private keypair
             RSA, Diffe-Hellman, ECC, El Gamal, and DSA
             Using GPG, ASYMMETRIC ENCRYPTION and decryption
                 create the key pair
                 list keys in ring
                 export julie@emailcom public key and share
                 import julie public key
                 encrypt message to send to julie
                 encrypt message message from Tim
         key space
             how much more secure is X more bits of encryption
         Secure Key Exchange
             Offline exchange
             Diffie-Hellman key exchange
         Key management
             calculate keys for 7 people
     -------
     Hashing
         Hashing creates a message digest
         SHA (Secure Hash Algorithms) SHA1 SHA2
         MD (Message Digest) MD2 MD4 MD5
         LM NTLM Microsoft algos
         Using md5sum
             md5sum secretmessagetxt > hashestxt {hash+filename}
             md5sum -c hashestxt > md5checktxt
         Using sha256sum
             sha256sum secretmessagetxt > hashestxt {hash+filename}
             sha256sum -c hashestxt > md5checktxt
         Using Hashcat
             hashcat cracks (unsalted) hashed password hashes
                 hashcat -m 0 -a 0 -o solvedtxt hashtxt rockyoutxt --force
     -------
     Digital Signatures
         Signature types
             detached signature
              all-at-once
              clearsigned
              signed hash
         Signing with gpg
             Tim creats a key
             Tim exports his public key
             Tim signs the message < passphrase
                 using recipient public key for encryption
                 using sender private key to sign
             Send the message and signature  
             recipient validate the signature 
                 using recipient private for decryption
                 using sender public key to verify signature
     
     -------
     Obfuscation is for
     -------
     Cryptography is
         the art and science for keeping information secure
         Goals of cryptography are PAIN 
             Privacy, Authentication, Integrity and Non-Repudiation
     Applied Cryptography
         Disk Encryption
             Windows BitLocker (AES?)
             OSX FileVault (AES?)
         Email 
             S/MIME && PGP
         Websites
             SSL Certificates (public key)
             password hashing
         Digital Forensics
             apply hashing to prove harddrive is unchanged
             steganography to find messages in images
         SSL Certificates
             X509 certificate
                 company documents
                 unique IP address
                 CSR ~ Certificate Signing Request ~ which contains public key
             chain of trust ~ root ships with OS
                 root certificate authority > intermediate certificate authority
             6 Step certificate usage
                 1 client request cert, 2 server send cert+key, 3 client verify date+root
                 4 client create and send session key
                 5 server decrypts session key with own private key
                 6 two way encrypted communication for this session
             using both asymmetric and symmetric keys (step 6)
             SSL vs TLS protocols
                 handshake protocols used to determine secret and type of encryption
             cypher suite processes
                 Key exchange
                 digital signature
                 message authentication
                 hashing algorythm
     Cryptographic Attacks
         Statistical Attack
         Brute Force Attack
         Birthday Attack
         Frequency Analysis
         Replay Attack
         Known-Plaintext
         Chosen-Plaintext
     Cryptographic tools
         use steghide
             steghide embed -cf familyjpg -ef hidden_messagetxt
             steghide extract -sf familyjpg
         use openSSL
     __________________
 ````
