//
//  HomeViewController.swift
//  SwiftConcept3
//
//  Created by ELM002 on 04/07/17.
//  Copyright © 2017 sundar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var arrConcept = Array<String>();
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBOutlet weak var btnTest: UIButton!
    @IBOutlet weak var btnTest1: UIButton!
    @IBOutlet weak var btnTest2: UIButton!
    @IBOutlet weak var btnTest3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let cellReuseIdentifier = "cell"

        arrConcept = ["TableView","CollectinView"];
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        
        return 1;
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let cellReuseIdentifier = "cell"

        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!

       // let cell = tableView.de("CellSubtitle") as? UITableViewCell

        return cell;
    }

    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//       // var identifier = "Cell"
//        
//        let cell = UITableViewCell()
//
//       // let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
//        
//       // let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        
//        cell.textLabel?.text = arrConcept[indexPath.row]
//        
//        return cell
//    }

    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        if(indexPath.row==1){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewcontroll = storyboard.instantiateViewController(withIdentifier: "CollectionViewController") as? CollectionViewController
            self.navigationController?.pushViewController(viewcontroll!, animated: true)
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
//        let path = UIBezierPath(roundedRect:btnTest.bounds,
//                                byRoundingCorners:[.topRight, .bottomRight],
//                                cornerRadii: CGSize(width: 15, height:  15))
//        
//        let maskLayer = CAShapeLayer()
//        maskLayer.path = path.cgPath
//        btnTest.layer.mask = maskLayer
//        
//        
//        let path1 = UIBezierPath(roundedRect:btnTest1.bounds,
//                                byRoundingCorners:[.topRight, .bottomRight],
//                                cornerRadii: CGSize(width: 15, height:  15))
//        
//        let maskLayer1 = CAShapeLayer()
//        maskLayer1.path = path1.cgPath
//
//        btnTest1.layer.mask = maskLayer1
//        
//        
//        let path2 = UIBezierPath(roundedRect:btnTest2.bounds,
//                                 byRoundingCorners:[.topRight, .bottomRight],
//                                 cornerRadii: CGSize(width: 15, height:  15))
//        
//        let maskLayer2 = CAShapeLayer()
//        maskLayer2.path = path2.cgPath
//
//        
//        btnTest2.layer.mask = maskLayer2
//        
//        let path3 = UIBezierPath(roundedRect:btnTest3.bounds,
//                                 byRoundingCorners:[.topRight, .bottomRight],
//                                 cornerRadii: CGSize(width: 15, height:  15))
//        
//        let maskLayer3 = CAShapeLayer()
//        maskLayer3.path = path3.cgPath
//
//        
//        btnTest3.layer.mask = maskLayer3

        //btnTest3.layer.cornerRadius = (corners: [.bottomLeft, .bottomRight], radius: CGSize(width: 15, height:  15))
    
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
