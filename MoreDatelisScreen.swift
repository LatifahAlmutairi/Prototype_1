//
//  moreDatelisScreen.swift
//  Nn
//
//  Created by Latifah Almutairi on 12/05/1443 AH.
//

import SwiftUI


struct MoreDatelisScreen: View {
    
   
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color("backgr").edgesIgnoringSafeArea(.all)
            
                

            
           // NavigationLink(destination: HomeScreen())
            
            
            ScrollView(){
                VStack(alignment: .leading) {
                    datelisView()
                        
                        .padding()
                    
                    HStack{
                        Image("da_new").padding()
                        Image("da_2").padding()
                        Image("da_3").padding()
                        
                    }
                    HStack{
                        Text("Details").padding(.leading,70).font(.title2)
                        Spacer()
                        Text("Reviews").padding(.trailing,70).font(.title2)
                            .foregroundColor(.gray)
                    }
                    
                    .padding()
                    
                    HStack{
                        Text("The aluminium. case is lightweight and made from 100 per cent recycled aerospace-grade alloy. The Sport Band is made form a durable yet surprisingly soft high-performance ").foregroundColor(.gray).padding()
                    }
                    // .padding()
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("View more").foregroundColor(.white).font(.title2)
                                .frame(width: 255, height: 55)
                                .background(.gray).cornerRadius(10).padding(.bottom)
                                .padding(.leading,30)
                        })
                            .padding(.leading,10)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image("heart").font(.system(size: 480)).padding(.trailing,50)
                                .padding(.bottom,20)
                            
                        })
                        
                    }
                }//big
                
            }//end Zstack
            
        }
    
        .navigationBarBackButtonHidden(true)
    
        .navigationBarItems(leading:
                                CustonButtonView(action: {presentationMode.wrappedValue.dismiss()}),trailing:Image("")
                            )
    
 
    }
}



struct MoreDatelisScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoreDatelisScreen()
    }
}

struct datelisView: View {
    var body: some View {
        HStack{
            VStack{
                VStack(alignment: .leading){
                    Text("Apple Watch").font(.title2)
                    Text("RED Aluminium Case").font(.system(size: 12))
                    .foregroundColor(.gray)}
                
                .padding()
                .padding(.trailing,20)
                VStack{
                    Text("$550").padding(.trailing,30).font(.largeTitle)
                    .foregroundColor(.red)}
                .padding()
                .padding(.trailing,20)
                
                VStack{
                    Text("Case size").font(.title2)
                    Text("40mm, 44mm").font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                }
                
                .padding()
                .padding(.trailing,40)
                
                
                VStack{
                    
                    Text("Connection").font(.title2)
                    Text("GPS, GPS Cellular").font(.system(size: 12))
                    .foregroundColor(.gray)}
                
                .padding()
                .padding(.trailing,20)
            }
            
            
            
            
            //   Spacer()
            
            
            VStack{
                Image("Watch_1")//.edgesIgnoringSafeArea(.leading)
                // Spacer()
            }
            
            
            
        }
    }
}

struct CustonButtonView: View {
            let action: ()->Void
    var body: some View {
        
        Button(action: action, label: {
        Image(systemName: "arrow.left").padding(.all,12)
            .background(Color.white)
            .cornerRadius(8.0)
            .foregroundColor(.black)
        })
    }
}
