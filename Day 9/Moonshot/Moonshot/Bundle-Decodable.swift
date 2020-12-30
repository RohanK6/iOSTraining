//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Rohan K on 12/30/20.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
        let missions: [Mission] = Bundle.main.decode("missions.json")


        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        func decode(_ file: String) -> [Astronaut] {


            guard let data = try? Data(contentsOf: url) else {
                fatalError("Failed to load \(file) from bundle.")
            }

            let decoder = JSONDecoder()
            let formatter = DateFormatter()
            formatter.dateFormat = "y-MM-dd"
            decoder.dateDecodingStrategy = .formatted(formatter)
            let launchDate: Date?
            Text(mission.launchDate ?? "N/A")

            

            guard let loaded = try? decoder.decode(T.self, from: data) else {

        return loaded
        }
            
            var formattedLaunchDate: String {
                if let launchDate = launchDate {
                    let formatter = DateFormatter()
                    formatter.dateStyle = .long
                    return formatter.string(from: launchDate)
                } else {
                    return "N/A"
                }
            }
            
    }
}
