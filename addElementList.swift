class listNode {
  var product: String
  var quantity: Int
  var next: listNode?

  init(product: String, quantity: Int) {
    self.product = product
    self.quantity = quantity
    self.next = nil
  }
}


func showList() {
  
  var list = head
  var i = 1
  
  print("\nThe list:")
  
  while let eachList = list {
    print("\n     producto \(i): \(eachList.product) account: \(eachList.quantity)")
    list = eachList.next
    i += 1
  }
}


func insertList(product: String, quantity: Int, position: Int) {
  
  let newNode = listNode(product: product, quantity: quantity)

  if position == 1 {
       newNode.next = head 
      head = newNode
    
  } else {
    var current = head
    var currentPosition = position

    while currentPosition > 3 && current != nil {
      current = current?.next
      currentPosition -= 1
    }
    newNode.next = current?.next
    current?.next = newNode
  }
}


func addElementList() {
  var product = ""
  var quantity  = 0
  var position = 0
  
  print("\nEnter the name of the product: ", terminator: "")
  guard let name = readLine() else {
    print("input error")
    return
  }  
  product = name

  print("Enter the account number: ", terminator: "")
  guard let quantityNumber = readLine(), let quantityNumberInt = Int(quantityNumber) else {
    print("input error")
    return
  }
  quantity  = quantityNumberInt

  print("Enter the position: ", terminator: "")
  guard let post = readLine(), let IntPost = Int(post) else {
    print("input error")
    return
  }
  position = IntPost

  insertList(product: product, quantity: quantity , position: position)
}


func createList() {
  insertList(product: "apple", quantity: 20, position: 1)
  insertList(product: "banana", quantity: 30, position: 2)
  insertList(product: "orange", quantity: 40, position: 3)
  insertList(product: "pear", quantity: 50, position: 4)
  insertList(product: "grape", quantity: 60, position: 5)
}

var head: listNode?



createList()
showList()
addElementList()
showList()
