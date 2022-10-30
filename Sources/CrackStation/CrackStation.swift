import Foundation
 
class CrackStation: Decrypter {

    required init() {
    }

    public func decrypt(shaHash: String) -> String? {
  //print("Welcome to CrackStation!")
  //print("Enter a hash: ")
  //var hash = readLine()!

    let dict = ["86f7e437faa5a7fce15d1ddcb9eaeaea377667b8": "a",
      "6dcd4ce23d88e2ee9568ba546c007c63d9131c1b": "A",
      "e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98": "b",
      "ae4f281df5a5d0ff3cad6371f76d5c29b6d953ec": "B",
      "84a516841ba77a5b4648de2cd0dfcb30ea46dbb4": "c",
      "32096c2e0eff33d844ee6d675407ace18289357d": "C",
      "3c363836cf4e16666669a25da280a1865c2d2874": "d",
      "50c9e8d5fc98727b4bbc93cf5d64a68db647f04f": "D",
      "58e6b3a414a1e090dfc6029add0f3555ccba127f": "e",
      "e0184adedf913b076626646d3f52c3b49c39ad6d": "E",
      "4a0a19218e082a343a1b17e5333409af9d98f0f5": "f",
      "e69f20e9f683920d3fb4329abd951e878b1f9372": "F",
      "54fd1711209fb1c0781092374132c66e79e2241b": "g",
      "a36a6718f54524d846894fb04b5b885b4e43e63b": "G",
      "27d5482eebd075de44389774fce28c69f45c8a75": "h",
      "7cf184f4c67ad58283ecb19349720b0cae756829": "H",
      "042dc4512fa3d391c5170cf3aa61e6a638f84342": "i",
      "ca73ab65568cd125c2d27a22bbd9e863c10b675d": "I",
      "5c2dd944dde9e08881bef0894fe7b22a5c9c4b06": "j",
      "58668e7669fd564d99db5d581fcdb6a5618440b5": "J",
      "13fbd79c3d390e5d6585a21e11ff5ec1970cff0c": "k",
      "a7ee38bb7be4fc44198cb2685d9601dcf2b9f569": "K",
      "07c342be6e560e7f43842e2e21b774e61d85f047": "l",
      "d160e0986aca4714714a16f29ec605af90be704d": "L",
      "6b0d31c0d563223024da45691584643ac78c96e8": "m",
      "c63ae6dd4fc9f9dda66970e827d13f7c73fe841c": "M",
      "d1854cae891ec7b29161ccaf79a24b00c274bdaa": "n",
      "b51a60734da64be0e618bacbea2865a8a7dcd669": "N",
      "7a81af3e591ac713f81ea1efe93dcf36157d8376": "o",
      "08a914cde05039694ef0194d9ee79ff9a79dde33": "O",
      "516b9783fca517eecbd1d064da2d165310b19759": "p",
      "511993d3c99719e38a6779073019dacd7178ddb9": "P",
      "22ea1c649c82946aa6e479e1ffd321e4a318b1b0": "q",
      "c3156e00d3c2588c639e0d3cf6821258b05761c7": "Q",
      "4dc7c9ec434ed06502767136789763ec11d2c4b7": "r",
      "06576556d1ad802f247cad11ae748be47b70cd9c": "R",
      "a0f1490a20d0211c997b44bc357e1972deab8ae3": "s",
      "02aa629c8b16cd17a44f3a0efec2feed43937642": "S",
      "8efd86fb78a56a5145ed7739dcb00c78581c5375": "t",
      "c2c53d66948214258a26ca9ca845d7ac0c17f8e7": "T",
      "51e69892ab49df85c6230ccc57f8e1d1606caccc": "u",
      "b2c7c0caa10a0cca5ea7d69e54018ae0c0389dd6": "U",
      "7a38d8cbd20d9932ba948efaa364bb62651d5ad4": "v",
      "c9ee5681d3c59f7541c27a38b67edf46259e187b": "V",
      "aff024fe4ab0fece4091de044c58c9ae4233383a": "w",
      "e2415cb7f63df0c9de23362326ad3c37a9adfc96": "W",
      "11f6ad8ec52a2984abaafd7c3b516503785c2072": "x",
      "c032adc1ff629c9b66f22749ad667e6beadf144b": "X",
      "95cb0bfd2977c761298d9624e4b4d4c72a39974a": "y",
      "23eb4d3f4155395a74e9d534f97ff4c1908f5aac": "Y",
      "395df8f7c51f007019cb30201c49e884b46b92fa": "z",
      "909f99a779adb66a76fc53ab56c7dd1caf35d0fd": "Z",
      "b6589fc6ab0dc82cf12099d1c2d40ab994e8410c": "0",
      "356a192b7913b04c54574d18c28d46e6395428ab": "1",
      "da4b9237bacccdf19c0760cab7aec4a8359010b0": "2",
      "77de68daecd823babbb58edb1c8e14d7106e83bb": "3",
      "1b6453892473a467d07372d45eb05abc2031647a": "4",
      "ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4": "5",
      "c1dfd96eea8cc2b62785275bca38ac261256e278": "6",
      "902ba3cda1883801594b6e1b452790cc53948fda": "7",
      "fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f": "8",
      "0ade7c2cf97f75d009975f4d720d1fa6c19f4897": "9"]

      if dict.keys.contains(shaHash) {
        print(String(dict[shaHash]!))
        return(String(dict[shaHash]!))
      }
      else {
        print("Hash not found")
        return nil
      }
  }
    
}
