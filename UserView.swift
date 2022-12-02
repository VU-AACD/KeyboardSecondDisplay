//
//  UserView.swift
//  DualScreenKeyboard
//
//  Created as part of Villanova's Augmented Alternative Communication Device (AACD) Senior Design Project
//


import SwiftUI
import UIKit


struct UserView: View {
   @EnvironmentObject var store: MessageStore
   @State var mymessage = "Hello!"
    var clipboardcontent = UIPasteboard.general.string
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
            VStack {
                Text("Text Preview:")
                    .font(.title)
                Text(mymessage)
                    .font(.custom("Courier",size:60)).frame(maxWidth: 800, maxHeight: 275)
                Spacer()
            }
            VStack{
                Spacer()
                HStack{
                    Button("CLEAR"){
                        mymessage.removeAll()
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 250, height:100)
                        .border(Color.red)
                        .font(.system(size:70, weight: .bold)).foregroundColor(.black).background(.red)
                    Button(" ! "){
                        mymessage.append("!")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("@"){
                        mymessage.append("@")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("#"){
                        mymessage.append("#")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Spacer()
                        .frame(width:260)
                    Button("PASTE"){
                        mymessage.append(clipboardcontent!)
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 175, height:100).border(Color.red).font(.system(size:55, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("DEL"){
                        if(mymessage.isEmpty==false){
                            mymessage.removeLast()
                            store.message = mymessage
                        }
                        print(mymessage)
                    }.frame(width: 200, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.red)
                }
                Spacer()
                    .frame(height:25)
                HStack{
                    Button(" 1 "){
                        mymessage.append("1")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("2"){
                        mymessage.append("2")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("3"){
                        mymessage.append("3")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("4"){
                        mymessage.append("4")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("5"){
                        mymessage.append("5")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("6"){
                        mymessage.append("6")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("7"){
                        mymessage.append("7")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("8"){
                        mymessage.append("8")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("9"){
                        mymessage.append("9")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("0"){
                        mymessage.append("0")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                }
                Spacer()
                    .frame(height:25)
                HStack{
                    Button("Q"){
                        mymessage.append("Q")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("W"){
                        mymessage.append("W")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("E"){
                        mymessage.append("E")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red)
                        .font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("R"){
                        mymessage.append("R")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("T"){
                        mymessage.append("T")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("Y"){
                        mymessage.append("Y")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("U"){
                        mymessage.append("U")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button(" I  "){
                        mymessage.append("I")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("O"){
                        mymessage.append("O")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("P"){
                        mymessage.append("P")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                }
                Spacer()
                    .frame(height:25)
                HStack{
                    Button("A"){
                        mymessage.append("A")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("S"){
                        mymessage.append("S")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("D"){
                        mymessage.append("D")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("F"){
                        mymessage.append("F")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("G"){
                        mymessage.append("G")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("H"){
                        mymessage.append("H")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("J"){
                        mymessage.append("J")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("K"){
                        mymessage.append("K")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("L"){
                        mymessage.append("L")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("?"){
                        mymessage.append("?")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width:120,height:100).border(.red).font(.system(size:100, weight:.bold)).foregroundColor(.black).background(.white)
            }
                Spacer()
                    .frame(height:15)
                HStack{
                    Button("Z"){
                        mymessage.append("Z")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("X"){
                        mymessage.append("X")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("C"){
                        mymessage.append("C")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("V"){
                        mymessage.append("V")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("SPACE"){
                        mymessage.append(" ")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 240, height:100)
                        .border(Color.red).font(.system(size:75, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("B"){
                        mymessage.append("B")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("N"){
                        mymessage.append("N")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button("M"){
                        mymessage.append("M")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                    Button(" . "){
                        mymessage.append(".")
                        store.message = mymessage
                        print(mymessage)
                    }.frame(width: 120, height:100)
                        .border(Color.red).font(.system(size:100, weight: .bold)).foregroundColor(.black).background(.white)
                }
            .padding()
        }
    }
}
}
