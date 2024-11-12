import Foundation

// Classes are slow!
// Classes are stored in HEAP (memory)
// Objects in the Heap are Reference types
// Reference types point to an object in memory and update the object in memory


class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
//    deinit {
//
//    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
    
}

let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
//viewModel.showButton = false
let value = viewModel.showButton
viewModel.hideButton()
