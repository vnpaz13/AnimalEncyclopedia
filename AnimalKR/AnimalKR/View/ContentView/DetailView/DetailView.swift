//
//  DetailView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct DetailView: View {
    
    let animal : Animal
    var body: some View {
        
        ScrollView {
            VStack (spacing: 20) {
                // 1. HeadImage
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                // 2. Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height:6)
                            .offset(y: 23)
                    )
                
                // 3. Headline
                Text(animal.headline)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding()
                
                
                // 4. Gallery - Group을 통해 묶어주기
                Group {
                    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    
                    DetailGallery(animal: animal)
                    
                } // :  Group
                
                
                // 5. Description
                Group {
                    DetailHead(headingImage: "info.circle", headingText: "자세한 정보")
                    
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                }
                
                // 6. Fact
                Group {
                    DetailHead(headingImage: "location.magnifyingglass", headingText: "팩트체크")
                    
                    DetailFact(animal: animal)
                }
                
                // 7. Fact
                Group {
                    DetailHead(headingImage: "books.vertical", headingText: "참고 자료")
                    ExternalWebLink(animal: animal)
                }
                
                // 8. Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

            }
            .navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
        }
    }
}

#Preview {
    NavigationView {
        DetailView(animal: Animal.sampleAnimal)
    }
}
