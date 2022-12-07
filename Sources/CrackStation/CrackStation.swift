import Foundation
 
public class CrackStation: Decrypter {
    private let sha1sha256dict: [String:String]
    required public init() {
      do {
        sha1sha256dict = try CrackStation.loadDictionaryFromDisk()
      } catch {
        sha1sha256dict = [:]
        print("Error catch on loadDictionaryFromDisk")
      }
    }

    static private func loadDictionaryFromDisk() throws -> [String : String] {
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
      return sha1sha256dict[shaHash]
    }
}