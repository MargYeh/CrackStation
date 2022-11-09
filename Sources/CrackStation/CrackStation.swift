import Foundation
 
public class CrackStation: Decrypter {

    required public init() {
    }

    static public func loadDictionaryFromDisk() throws -> [String : String] {
      guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

      let data = try Data(contentsOf: path)
      let jsonResult = try JSONSerialization.jsonObject(with: data)

      if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
          return lookupTable
      } else {
          return [:]
      }
    }

    public func decrypt(shaHash: String) -> String? {
      do {
        let lookupTable = try CrackStation.loadDictionaryFromDisk()
              if lookupTable.keys.contains(shaHash) {
          let answer = lookupTable[shaHash]
          return(answer!)
        }
        else {
          return nil
        }
      }
      catch {
        print("Error loading lookup table from disk: \(error)")
        return "Error loading lookup table from disk: \(error)"
      }
    }
}