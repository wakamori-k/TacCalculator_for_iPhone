//
//  ViewController.swift
//  TacCalculator_for_iPhone
//
//  Created by Kazumasa Wakamori on 2015/06/18.
//  Copyright (c) 2015年 wakamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var taxInDisp: UILabel!
    @IBOutlet weak var taxOutDisp: UILabel!
    @IBOutlet weak var taxDisp: UILabel!
    
    @IBOutlet weak var taxRateSegmentedCtl: UISegmentedControl!
    
    var total = 0;
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func taxRateChanged(sender: AnyObject) {
        dispResult();
    }
    
    @IBAction func pushAC(sender: AnyObject) {
        clearNum();
    }
    
    @IBAction func pushDEL(sender: AnyObject) {
        popNum();
    }
    
    @IBAction func push0(sender: AnyObject) {
        pushNum(0);
    }
    
    @IBAction func push00(sender: AnyObject) {
        pushNum(0);
        pushNum(0);
    }
    
    @IBAction func push1(sender: AnyObject) {
        pushNum(1);
    }
    
    @IBAction func push2(sender: AnyObject) {
        pushNum(2);
    }
    
    @IBAction func push3(sender: AnyObject) {
        pushNum(3);
    }
    
    @IBAction func push4(sender: AnyObject) {
        pushNum(4);
    }
    
    @IBAction func push5(sender: AnyObject) {
        pushNum(5);
    }
    
    @IBAction func push6(sender: AnyObject) {
        pushNum(6);
    }
    
    @IBAction func push7(sender: AnyObject) {
        pushNum(7);
    }
    
    @IBAction func push8(sender: AnyObject) {
        pushNum(8);
    }
    
    
    @IBAction func push9(sender: AnyObject) {
        pushNum(9);
    }
    
    
    func clearNum(){
        total = 0;
        dispResult()
    }
    
    func pushNum(num: Int){
        if(total < 9999999999){
            total *= 10;
            total += num;
            dispResult()
        }
    }
    
    func popNum(){
        total /= 10;
        dispResult();
    }
    
    func dispResult(){
        var res: Int;
        if( taxRateSegmentedCtl.selectedSegmentIndex == 0){
            res = Int(Double(total)*1.08);
        }else{
            res = Int(Double(total)*1.10);
        }
        
        taxInDisp.text = String(res);
        taxOutDisp.text = String(total);
        taxDisp.text = String(res-total);
    }
    
    
}

