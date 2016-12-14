//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



struct BlogEntry{
    var entryDate: Date
    var entryTitle: String
    var entryText: String
    
    init(entryDate: Date, entryTitle: String, entryText: String) {
        self.entryDate = entryDate
        self.entryTitle = entryTitle
        self.entryText = entryText
    }
}



var myArray = [Int]()



class Blog{
    var blogName: String
    var blogEntries = [BlogEntry]()
    
    init(blogName: String) {
        self.blogName = blogName
    }
    
    func newBlogEntry(newBlogEntry: BlogEntry){
        blogEntries.append(newBlogEntry)
    }
}




class User{
    var firstName: String
    var lastName: String
    var blogs = [Blog]()

    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func createNewBlog(blogName: Blog){
      blogs.append(blogName)
    }
    
}



var Jennifer = User(firstName: "Jenifer", lastName: "Mayer")
print(Jennifer.firstName)

Jennifer.createNewBlog(blogName: Blog(blogName: "Dairy of a wimpy kid"))
Jennifer.createNewBlog(blogName: Blog(blogName: "Cooking with heart"))
Jennifer.createNewBlog(blogName: Blog(blogName: "Goofy and Co"))
print(Jennifer.blogs.count)

var myDate = Date(timeIntervalSinceNow: 300)

var firstKid = BlogEntry(entryDate: myDate, entryTitle: "Hell of a Day", entryText: "Today the grumpy kid was unfortunately not in the extended area to see what is going on here")

var firstKid2 = BlogEntry(entryDate: myDate, entryTitle: "I like the sun", entryText: "It was definetly good to not be here during the daytime and see all this stupid bullshit")

Jennifer.blogs[0].newBlogEntry(newBlogEntry: firstKid)
Jennifer.blogs[0].newBlogEntry(newBlogEntry: firstKid2)

print(Jennifer.blogs[0].blogEntries)





