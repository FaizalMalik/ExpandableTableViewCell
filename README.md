# ExpandableTableViewCell
A sample Application in Swift 4.2 to demonstrate the dynamically increasing height of TableView Cell based on its Content. For details refer [*Self-sizing Table View Cells*](https://www.raywenderlich.com/129059/self-sizing-table-view-cells)


# Demo 

![solarized dualmode](https://github.com/FaizalMalik/ExpandableTableViewCell/blob/master/Raw/ExpandableTableViewCell.mov)


# How to Implement the Expandable TableView Cell

#### Step 1. Setup TableView to Support Autosizing ####

```swift
override func viewDidLoad() {
  super.viewDidLoad()
        
  // Auto resizing the height of the cell
  tableView.estimatedRowHeight = 140 //your estimated cell height 
  tableView.rowHeight = UITableViewAutomaticDimension
  
  ...
  
} 


```

#### Step 2. Set Label numberOfLines ####

```swift

// If you are using Label , set numberOfLines = 0

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UITableViewCell
    
    cell.label.numberOfLines = 0
} 


```

Happy Coding :)
