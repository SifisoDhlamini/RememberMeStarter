//
//  ContentView.swift
//  RememberMe
//
//  Created by Sifiso Dhlamini on 2024/1/19.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Query var people: [Person]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("RememberMe?")
            .navigationDestination(for:
                                    Person.self) { person in
                Text(person.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
