//
//  Filter.swift
//  DesafioPlenoMesa
//
//  Created by Franclin Cabral on 12/02/16.
//  Copyright © 2016 franclincabral. All rights reserved.
//

import UIKit

class Filter: UIViewController{

  
  @IBOutlet var tableView: UITableView!
  
  
  
  
}

//MARK - TableView Delegate and DataSource
extension Filter: UITableViewDataSource, UITableViewDelegate{
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 2
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")
    //cell?.textLabel?.font.fontWithSize(14)
    
    if indexPath.section == 0 {
      cell?.textLabel?.font = UIFont(name: "HelveticaNeue", size: 25.0)
      cell?.textLabel?.text = "Filtrar por Categoria"
      cell?.selectionStyle = UITableViewCellSelectionStyle.None
    }else{
      switch (indexPath.row){
      case 0: cell?.textLabel?.text = "Todos"
      
        break
      case 1: cell?.textLabel?.text = "Aeroporto"
        break
      case 2: cell?.textLabel?.text = "Restaurantes"
        break
      case 3: cell?.textLabel?.text = "Baladas"
        break
      case 4: cell?.textLabel?.text = "Supermercados"
        break
      case 5: cell?.textLabel?.text = "Shopping Centers"
        break
      default: cell?.textLabel?.text = "There is no option"
        break
      }
    }
    
    
    
    
    return cell!
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 1
    }else {
      return 6
    }
  }
}