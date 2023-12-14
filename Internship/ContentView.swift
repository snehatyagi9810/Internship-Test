//
//  ContentView.swift
//  Internship
//
//  Created by Sneh on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var noiseLengthSliderValue = 0.8
    @State private var soundLevelSliderValue = 0.89
    @State private var criticalToggleValue = false
    var body: some View {
        TabView{
            Text("Speech Tab")
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Speech")
                }
            
            NavigationStack{
                VStack{
                    VStack(alignment: .leading, spacing: 30){
                        VStack(alignment:.leading, spacing: 10){
                            Text("Noise Length")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.customBlue)
                            
                            Slider(value: $noiseLengthSliderValue)
                                .tint(.gray)
                                .frame(height: 10)
                                .padding(.horizontal)
                            
                            HStack(){
                                Text("Short")
                                Spacer()
                                Text("Long")
                            }
                            .foregroundColor(.customBlue)
                        }
                        
                        VStack(alignment:.leading, spacing: 10){
                            Text("Sound Level Threshold")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.customBlue)
                            
                            Slider(value: $soundLevelSliderValue)
                                .tint(.gray)
                                .padding(.horizontal)
                            
                            HStack(){
                                Text("Medium")
                                Spacer()
                                Text("Very Loud")
                            }
                            .foregroundColor(.customBlue)
                        }
                    }
                    .padding()
                    
                    VStack(spacing: 20){
                        Text("Start Noise Alert")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.customBlue)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "record.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .foregroundStyle(.customBlue)
                        }
                            
                        HStack(spacing: 20){
                            Text("Mark alert as critical")
                                .foregroundStyle(.customBlue)
                            Toggle("", isOn: $criticalToggleValue)
                                .fixedSize()
                                .toggleStyle(SwitchToggleStyle(tint: .black))
                        }
                        
                        

                    }
                    .padding()
                    .padding()
                }
                .navigationTitle("Alert")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    NavigationLink {
                        SettingView()
                    } label: {
                        Image(systemName: "gear")
                            .imageScale(.medium)
                            .foregroundStyle(.black)
                    }
                })
            }
            
                .tabItem {
                    Image(systemName: "waveform")
                    Text("Alert")
                }
            Text("Emoji Tab")
                .tabItem {
                    Image(systemName: "rectangle.checkered")
                    Text("Emoji Board")
                }
            Text("Text Tab")
                .tabItem {
                    Image(systemName: "keyboard")
                    Text("Text")
                }
        }
    }
}
    #Preview {
        ContentView()
    }

