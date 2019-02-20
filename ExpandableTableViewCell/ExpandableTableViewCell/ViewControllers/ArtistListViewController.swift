/*
 //  Created by Faizal on 19/02/19.
 //  Copyright © 2019 test. All rights reserved.
 //
 */

import UIKit

class ArtistListViewController: UIViewController {
  
  let artists = Artist.artistsFromBundle()
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 140
    self.navigationController?.navigationBar.tintColor = UIColor.white
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? ArtistDetailViewController,
        let indexPath = tableView.indexPathForSelectedRow {
      destination.selectedArtist = artists[indexPath.row]
    }
  }
}

extension ArtistListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return artists.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArtistTableViewCell
    
    let artist = artists[indexPath.row]
    
    cell.artistImageView.image = artist.image
    cell.nameLabel.text = artist.name
    cell.nameLabel.backgroundColor = UIColor(red: 1, green: 152 / 255, blue: 0, alpha: 1)
    cell.nameLabel.textColor = UIColor.white
    cell.nameLabel.textAlignment = .center
    cell.selectionStyle = .none
    cell.bioLabel?.text = artist.bio
    cell.bioLabel.textColor = UIColor(white: 114/255, alpha: 1)

    return cell
  }
}

/*func tableView(tableView: UITableView,
 cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCellWithIdentifier("Cell",
 forIndexPath: indexPath) as! ArtistTableViewCell
 
 let artist = artists[indexPath.row]
 cell.bioLabel.text = artist.bio
 cell.bioLabel.textColor = UIColor(white: 114/255, alpha: 1)
 return cell
 }*/

