//
//  AppInfoView.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    
                    // 1. Application
                    GroupBox {
                        AppInfoContent(name: "Developer", content: "VnPaz")
                        AppInfoContent(name: "Compatibility", content: "iOS15.0")
                        AppInfoContent(name: "Version", content: "1.0.0")
                        AppInfoContent(name: "Website", linkLabel: "Ad's Devlog", linkDestination: "naver.com")
                        AppInfoContent(name: "Git", linkLabel: "Go to Repository", linkDestination: "github.com")
                    } label: {
                        AppInfoLabel(labelText: "Application", labelImage: "apps.iphone")
                    }
                    .padding(.vertical)
                    
                    // 2. Copyright
                    GroupBox {
                        Divider().padding(.vertical, 5)
                        HStack (spacing: 10) {
                            Image("copyright")
                                .resizable()
                                .scaledToFit()
                                .frame(width: CGFloat.screenWidth * 0.3)
                            Text("저작권법 제24조의2(공공저작물의 자유이용)에 따라 한국문화정보원에서 저작재산권의 전부를 보유하고 있거나 자유이용허락표시에 대한 권리자의 동의를 받은 경우는 “공공저작물 자유이용허락표시기준(공공누리, KOGL)”을 부착하여 별도의 이용허락 없이 자유이용이 가능합니다.")
                                .font(.footnote)
                                .hTrailing()
                        }
                        
                        Divider().padding(.vertical, 5)
                        
                        // 3. AppIcon Copyright
                        HStack(alignment: .center, spacing: 10) {
                            Image("appicon")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Spacer()
                            
                            Link(destination: URL(string: "https://www.freepik.com/vectors/animal-face")!) {
                                Text("Animal face vector created by grmarc - www.freepik.com")
                                    .font(.footnote)
                                Image(systemName:"arrow.up.right.square").foregroundColor(.accentColor).font(.footnote)
                            }
                        }
                        
                        Divider().padding(.vertical, 5)
                        
                        
                        // 4. Splash Copyright
                        HStack(alignment: .center, spacing: 10) {
                            Image("splash")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            Spacer()
                            
                            Link(destination: URL(string: "https://icons8.com/illustrations/author/5c07e68d82bcbc0092519bb")!) {
                                Text("Illustration by Icons 8 from Ounch!")
                                    .font(.footnote)
                                Image(systemName:"arrow.up.right.square").foregroundColor(.accentColor).font(.footnote)
                            }
                        }
                    } label: {
                        AppInfoLabel(labelText: "Copyright", labelImage: "c.circle")
                    }
                }
                .padding()
                .navigationBarTitle("앱 정보")
            }
        }
    }
}
#Preview {
    AppInfoView()
}
