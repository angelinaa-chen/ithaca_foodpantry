import SwiftUI

struct MainView: View {
    @State private var tabIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            if tabIndex == 0 {
                PantryListView()
            } else if tabIndex == 1 {
                SavedView()
            } else if tabIndex == 2 {
                ProfileView()
            }
            
            Spacer()
            SlidingTabView(selection: $tabIndex, tabs: ["house", "bookmark", "person"], activeAccentColor: Color.sageGreen, selectionBarColor: Color.sageGreen
            )
            .padding(.bottom, -25)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

