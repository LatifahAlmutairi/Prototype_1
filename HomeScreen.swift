//
//  HomeScreen.swift
//  Nn
//
//  Created by Latifah Almutairi on 12/05/1443 AH.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedIndex: Int = 0
    private let categories=["Trending", "Available" , "We recommand"]
    var body: some View {
        NavigationView {
            ZStack{
                Color("backgr").edgesIgnoringSafeArea(.all)
                
                ScrollView(){
                    VStack(alignment: .leading) {
                        AppBarView()
                            .padding()
                        SearchAndclick()
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(0 ..< categories.count) { i in
                                    CategoryView(isActive: i == selectedIndex, text: categories[i])
                                        .onTapGesture {
                                            selectedIndex = i
                                        }
                                }
                                
                            }.padding()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                     
                                ForEach(items){ item in
                                    NavigationLink(destination: MoreDatelisScreen())
                                    {
                                        ProductsView(item: item)
                                    }
                                }
                                .navigationBarHidden(true)
                                .padding(.trailing)
                            }.padding(.leading)
                        }
                        
                        
                        
                        HStack{
                            Text("Accessories").fontWeight(.semibold).font(.title3).padding(.horizontal)
                            Spacer()
                            Button(action: {
                            }, label:{
                                Text("View all").foregroundColor(.gray)
                                    .padding(.horizontal)
                                
                            })
                        }
                        
                      /*  ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 3) { index in
                                    ProductsView(image: Image("Ac_\(index +  1)"))
                                }
                                .padding(.trailing)
                            }.padding(.leading)
                        }*/
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                     
                                ForEach(itemsA){ itemA in
                                    
                                    AccessoriesView(itemA: itemA)
                                      
                                }
                                
                                .padding(.trailing)
                            }.padding(.leading)
                        }
                        
                        
                    }//big Vstack
                }//end scrool
                
                
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Image("Image1").resizable().frame(width: 70.0, height: 70.0).background(Rectangle().frame(width: 90.0, height: 90.0).foregroundColor(Color(red: 1.017, green: 0.812, blue: 0.837)).cornerRadius(20))
                .padding(.leading,-12)
            
            
            VStack(alignment: .leading){
                
                Text(Date.now, format: .dateTime.day().month().year())
                    .foregroundColor(Color.gray).padding(.leading,9)
                Text("Hi, Latifah Salem")
                    .font(.title2)
                
                    .padding(.leading,9)
            }
            Spacer()
            Button(action: {
            }, label:{
                
                Image("bag").background(
                    Rectangle().frame(width: 60.0, height: 60.0).foregroundColor(Color(red: 0.984, green: 0.820, blue: 0.839)).cornerRadius(20))
                    .padding(.trailing,-8)
                
            })
        }.padding(.horizontal)
    }
}

struct SearchAndclick: View {
    @State private var search: String=""
    var body: some View {
        HStack{
            HStack{
                
                TextField("Search for the product", text:$search)
            }
            .padding(.all,15)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.trailing)
            
            Button(action: {
                
            }, label:{
                Image(systemName: "magnifyingglass").font(.title2.bold()).foregroundColor(Color.white).background(
                    Rectangle().frame(width: 45.0, height: 45.0).foregroundColor(Color(red: 0.859, green: 0.455, blue: 0.424)).cornerRadius(8))
                // Spacer()
            }).padding()
            
        }.padding(.horizontal)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    @State private var didTap:Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Button(action: {
                self.didTap = true
            }, label: {
                
                Text(text).foregroundColor(.white)
                    .frame(width: 135, height: 44)
                
                    .background(didTap ?  Color("Colorbb"): Color.gray)
                    .cornerRadius(10)
                    //.padding(5)
                
             
                
              
                
            })
            
        }.padding(.trailing)
    }
}

struct ProductsView: View {
    //let image: Image
    
    var item: Item = items[0]
    var body: some View {
        VStack(){
           //image
            Image(item.image)
            .frame(width: 210, height: 130).background(
              Circle().frame(width: 160.0, height: 140.0).foregroundColor(Color(red: 1.017, green: 0.812, blue: 0.837)))
       
        Text(item.title).font(.title3).fontWeight(.bold).foregroundColor(Color("nm"))
            
         HStack(spacing: 2){Text(item.text).foregroundColor(.black)}
            
         
        }.frame(width: 140)
            .padding()
            .background(.white)
            .cornerRadius(20.0)
        
       
    }
}


struct AccessoriesView: View {
    //let image: Image
    
    var itemA: ItemA = itemsA[0]
    var body: some View {
        VStack(){
           //image
            Image(itemA.image)
            .frame(width: 210, height: 130).background(
                Circle().frame(width: 160.0, height: 140.0).foregroundColor(Color(red: 1.017, green: 0.812, blue: 0.837)))
            
            
            Text(itemA.title).font(.title3).fontWeight(.bold).foregroundColor(Color("nm"))
            
            HStack(spacing: 2){Text(itemA.text).foregroundColor(.black)}
            
            
        }.frame(width: 140)
            .padding()
            .background(.white)
            .cornerRadius(20.0)
        
       
    }
}
