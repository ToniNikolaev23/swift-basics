import Foundation

/*
 
 During the life the app, we create and destroy objects
 
 //Create = Initialize (init) = Allocate (add to memory)
 //Destroy = Deinitilizie (deinit) = Deallocate (removing from memory)
 
 //Automatic Reference Counting (ARC)
 // A live count of the number of objects in memory
 // Create 1 object, count goes up by 1
 // Destroy 1 object, count goes down by 1
 
 // The more objects in memory, the slower the app performs
 // We want to keep the ARC count as low as possible
 // We want to create objects only when we need them
 // And destroy them as soon as we no longer need them
 
 // For example, if an app has 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen
 2 when we need it(i.e when the user clicks a button to segue to screen 2).When we get to screen 2, we may want to adeallocate screen 1.
 
 // There are 2 types of Memory
 // Stack and Heap
 // Only objects in the Heap are counted towards ARC
 
 // Objects in the Stack
 // String, Bool, Int, most basic types
 // NEW: Structs, Enums
 
 // Objects in the Heap
 // Functions
 // NEW: Class, Actors
 
 // iPhone is a "multi-threaded environment"
 // There are multiple threads running simultaneously
 // Each thread has a Stack
 // But there is only 1 Heap of all threads
 
 // Therefore
 // Stack is faster, lower memory footprint, preferable
 // Heap is slower, higher memory footprint
 
 // Value vs Reference types
 // Objects in the Stack are "Value" types.
 // When you edit a Value type, you create a copy of it with new data.
 
 // Objects in the Heap are "Reference" types
 // When you edit a Reference type, you edit the object that you are referencing. This "reference" is called "pointer" because it points to an object in the Heap (in memory)
 
 
 
 */


struct MyFirstObject {
    let title: String = "Hello, world!"
}

class MySecondObject {
    let title: String = "Hello, world!"
}

// Class vs Struct

// Imagine a school and in the school there are classrooms.
// Within each class, there are quizzes.
// During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return them back to the teacher.

// School = App
// ClassRoom = Class
// Quiz = Struct

// We want to use a class for things like:
// "Manager" "DataService" "Service" "Factory" "ViewModel"
// Objects that we create and want to perform actions inside

//We want to use a struct for things like
// Data models
// Objects that we create and pass around our app