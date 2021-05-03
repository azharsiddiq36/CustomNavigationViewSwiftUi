//
//  ContentView.swift
//  Custom Navigation View
//
//  Created by One Click Democracy  on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem { Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem { Image(systemName: "paperplane.fill")
                        Text("Explorasi")
                    }
                Home()
                    .tabItem { Image(systemName: "tray.fill")
                        Text("Subcription")
                    }
                Home()
                    .tabItem { Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
                Home()
                    .tabItem { Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
        }.accentColor(.red)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
struct Home : View{
    var body: some View{
        NavigationView{
            Konten()
                .navigationBarItems(
                leading:
                    HStack{
                        Button(action:{print("Hello boys")}){
                            Image(systemName: "play.rectangle")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 40, height: 20)
                        }
                    },
                trailing:
                    HStack(spacing:15){
                        Button(action:{print("Hello boys")}){
                            Image(systemName: "tray.full")
                                .foregroundColor(Color.secondary)
                        }
                        Button(action:{print("Hello boys")}){
                            Image(systemName: "video.fill")
                                .foregroundColor(Color.secondary)

                        }
                        Button(action:{print("Hello boys")}){
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.secondary)
                        Button(action:{print("Hello boys")}){
                            Image(systemName: "person.circle")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.secondary)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            ).navigationBarTitle("",displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
struct Konten :View{
    var body: some View{
        List{
            CellKontent(imageKontent: "pict", profileKontent: "pict", judul: "Cara Mendapatkan uang dengan halal", deskripsi: "Ditonton 300 x - 4 jam yang lalu", durasi: "10:23")
            CellKontent(imageKontent: "pict2", profileKontent: "pict", judul: "Cara apa sih", deskripsi: "Ditonton 300 x - 4 jam yang lalu", durasi: "10:23")
            CellKontent(imageKontent: "pict", profileKontent: "pict", judul: "Cara Mendapatkan uang dengan halal", deskripsi: "Ditonton 300 x - 4 jam yang lalu", durasi: "10:23")
            CellKontent(imageKontent: "pict2", profileKontent: "pict", judul: "Cara Mendapatkan uang dengan halal", deskripsi: "Ditonton 300 x - 4 jam yang lalu", durasi: "10:23")
        }
    }
}

struct CellKontent :View{
    var imageKontent:String
    var profileKontent : String
    var judul : String
    var deskripsi : String
    var durasi : String
    
    var body : some View{
        VStack{
            ZStack(alignment:.bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Text(durasi)
                    .padding(.all,5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing,5)
                    .padding(.bottom,5)
            }
            HStack(spacing:20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment:.leading){
                    Text(judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi  )
                            .font(.caption)
                    }
                    
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
