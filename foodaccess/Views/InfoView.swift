//
//  InfoView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/22/24.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        
        ScrollView {
            Image("st_johns")
                .resizable()
                .frame(width: 400, height: 225)
                .cornerRadius(20)
                .shadow(radius: 15)
            
            VStack (alignment: .leading){

                Text("St John's Community Service")
                    .padding(.top, 25)
                    .bold()
                    .font(.system(size: 30))
                //                            .foregroundColor(Color.sageGreen)
                    .padding(.bottom, 20)
                
                Text("Open hours")
                    .bold()
                //                            .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                    .padding(.bottom, 5)
                    .padding(.top, 5)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    .background(Color.sageGreen)
                    .cornerRadius(20)
                
                Text("Sunday, 9:00am - 9:00pm")
                    .padding(.top, 8)
                    .padding(.bottom, 25)
                    .padding(.leading, 5)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                
                
                Text("Information")
                    .bold()
                //                            .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                    .padding(.bottom, 5)
                    .padding(.top, 5)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    .background(Color.sageGreen)
                    .cornerRadius(20)
                
                
                Text("Offering 3 meals per day, per each person in the family (once per month).")
                    .padding(.top, 8)
                    .padding(.bottom, 25)
                    .padding(.leading, 5)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                
                
                Text("Address")
                    .bold()
                //                            .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .font(.system(size: 17))
                    .padding(.bottom, 5)
                    .padding(.top, 5)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                    .background(Color.sageGreen)
                    .cornerRadius(20)
                
                
                
                Text("618 W State Street Ithaca, NY, 14850")
                    .padding(.top, 8)
                    .padding(.bottom, 10)
                    .padding(.leading, 5)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                
                LocationView()
                    .frame(height: 200)
                    .cornerRadius(20)
                    .padding(.bottom, 20)
                
                
                Spacer()
                
                Link(destination: URL(string: "https://www.example.com")!) {
                    Text("Go to Website")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.sageGreen)
                        .cornerRadius(20)
                        .padding()
                        .padding(.leading, -20)
                        .padding(.trailing, -20)
                        .padding(.bottom, 20)

                }
            }
            .padding(.leading, 25)
            .padding(.trailing, 25)
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all
        )
    }
}
            
            
            
            //            }
            //                .padding(.leading, 30)
            //                .padding(.trailing, 30)
            //        )
            //
            //            }
            //
            //
            //            Rectangle()
            //                .fill(Color.white)
            //                .frame(width: .infinity, height: .infinity)
            //                .cornerRadius(30)
            //                .padding(.top, -10)
            //                .padding(.trailing, -10)
            //                .shadow(radius: 10)
            //                .overlay(
            //                    VStack {
            //                        Spacer()
            //                    }
            //                )
            //
            //        }
            //        .edgesIgnoringSafeArea(.all)
            //
            //        VStack (alignment: .leading){
            //            LocationView()
            //                .frame(width: 400, height: 170)
            //
            //                Rectangle()
            //                    .fill(Color.white)
            //                    .frame(width: .infinity, height: .infinity)
            //                    .cornerRadius(30)
            //                    .padding(.top, -10)
            //                    .padding(.trailing, -10)
            //                    .shadow(radius: 10)
            //                    .overlay(
            //                        VStack(alignment: .leading) {
            //                            Text("St John's Community Service")
            //                                .padding(.top, 25)
            //                                .bold()
            //                                .font(.system(size: 30))
            //                            //                            .foregroundColor(Color.sageGreen)
            //                                .padding(.bottom, 20)
            //
            //                            Text("Open hours")
            //                                .bold()
            //                            //                            .frame(maxWidth: .infinity)
            //                                .foregroundColor(Color.white)
            //                                .font(.system(size: 17))
            //                                .padding(.bottom, 3)
            //                                .padding(.top, 3)
            //                                .padding(.leading, 40)
            //                                .padding(.trailing, 40)
            //                                .background(Color.sageGreen)
            //                                .cornerRadius(20)
            //
            //                            Text("Sunday, 9:00am - 9:00pm")
            //                                .padding(.top, 5)
            //                                .padding(.bottom, 20)
            //                                .padding(.leading, 5)
            //                                .font(.system(size: 16))
            //                                .fontWeight(.regular)
            //
            //
            //                            Text("Information")
            //                                .bold()
            //                            //                            .frame(maxWidth: .infinity)
            //                                .foregroundColor(Color.white)
            //                                .font(.system(size: 17))
            //                                .padding(.bottom, 3)
            //                                .padding(.top, 3)
            //                                .padding(.leading, 40)
            //                                .padding(.trailing, 40)
            //                                .background(Color.sageGreen)
            //                                .cornerRadius(20)
            //
            //
            //                            Text("Offering 3 meals per day, per each person in the family (once per month).")
            //                                .padding(.top, 5)
            //                                .padding(.bottom, 20)
            //                                .padding(.leading, 5)
            //                                .font(.system(size: 16))
            //                                .fontWeight(.regular)
            //
            //
            //                            Text("Address")
            //                                .bold()
            //                            //                            .frame(maxWidth: .infinity)
            //                                .foregroundColor(Color.white)
            //                                .font(.system(size: 17))
            //                                .padding(.bottom, 3)
            //                                .padding(.top, 3)
            //                                .padding(.leading, 40)
            //                                .padding(.trailing, 40)
            //                                .background(Color.sageGreen)
            //                                .cornerRadius(20)
            //
            //
            //
            //                            Text("618 W State Street Ithaca, NY, 14850")
            //                                .padding(.top, 5)
            //                                .padding(.bottom, 20)
            //                                .padding(.leading, 5)
            //                                .font(.system(size: 17))
            //                                .fontWeight(.regular)
            //
            //                            LocationView()
            //                                .frame(height: 170)
            //                                .cornerRadius(20)
            //
            //
            //                            Spacer()
            //
            //                            Link(destination: URL(string: "https://www.example.com")!) {
            //                                Text("Go to Website")
            //                                    .bold()
            //                                    .foregroundColor(.white)
            //                                    .padding()
            //                                    .frame(maxWidth: .infinity)
            //                                    .background(Color.sageGreen)
            //                                    .cornerRadius(20)
            //                                    .padding()
            //                                    .padding(.leading, -20)
            //                                    .padding(.trailing, -20)
            //
            //                            }
            //
            //                        }
            //                            .padding(.leading, 30)
            //                            .padding(.trailing, 30)
            //                    )
            //
            //
            //
            //
            //        }
            //        .edgesIgnoringSafeArea(.all)
            //
            //    }
        
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
