# CrackStation, a Decrypter implementation

This Swift library takes in a SHA1 or SHA256 hash and outputs the corresponding password as a string (Maximum of 3 characters long). 

## Overview
This is a project created by Margaret Yeh for CS561 Software Engineering Methods in Fall 2022. 

The individual steps of the project were as follows:
- POCv1: Allows input for single character hashes (a-z, A-Z, 0-9).
- POCv2: Allows input for 1,2 character hashes
- POCv3 (current): Allows input for 1,2,3 character hashes for both SHA1 and SHA256. Also can decrypt characters ? and !

## Mission Statement
The purpose for the creation of this library was an educational experience in coding in an unfamiliar language and utilizing the Github Flow branching model. 

## Installation

### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your `Package.swift` file:
```
dependencies: [ 
    .package(url: "git@github.com:MargYeh/CrackStation", .upToNextMajor(from: "3.0.0"))
]
```

## Usage
### The API
The API contains two functions, 'init' which creates the decrypter and 'decrypt' which decrypts hashes back to plain-text passwords.

Init function signature:
```
init()
```
Decrypt function signature: Takes in the hash as a String and returns the password as a String
```
func decrypt(shaHash: String) -> String?
```

### Example usage
```
import CrackStation
let crack_station = CrackStation()
let checkHash = crack_station.decrypt(shaHash: "468415f0e1128f85022b1e20e662626a3c5a77a97e33facd9064a82e0a7a71be")
```

# Author
Margaret Yeh