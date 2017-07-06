//
//  ViewController.swift
//  ticTacToe
//
//  Created by Erick Lui on 7/6/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var colorClick = false
  var arr: [[Any]] = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ]
  
  @IBOutlet weak var winnerLabel: UILabel!
  @IBOutlet weak var b1: UIButton!
  @IBOutlet weak var b2: UIButton!
  @IBOutlet weak var b3: UIButton!
  @IBOutlet weak var b4: UIButton!
  @IBOutlet weak var b5: UIButton!
  @IBOutlet weak var b6: UIButton!
  @IBOutlet weak var b7: UIButton!
  @IBOutlet weak var b8: UIButton!
  @IBOutlet weak var b9: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    winnerLabel.backgroundColor = UIColor.clear
    winnerLabel.text = ""
    // Do any additional setup after loading the view, typically from a nib.
  }
  @IBAction func buttonPressed(_ sender: UIButton) {
    switch sender.tag {
    case 1:
      if arr[0][0] as? Int == 0 {
        arr[0][0] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 2:
      if arr[0][1] as? Int == 0 {
        arr[0][1] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 3:
      if arr[0][2] as? Int == 0 {
        arr[0][2] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 4:
      if arr[1][0] as? Int == 0 {
        arr[1][0] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 5:
      if arr[1][1] as? Int == 0 {
        arr[1][1] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 6:
      if arr[1][2] as? Int == 0 {
        arr[1][2] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 7:
      if arr[2][0] as? Int == 0 {
        arr[2][0] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 8:
      if arr[2][1] as? Int == 0 {
        arr[2][1] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    case 9:
      if arr[2][2] as? Int == 0 {
        arr[2][2] = colorClick
        setColor(sender: sender, color: colorClick)
        colorClick = !colorClick
      }
    default:
      break
    }
    checkWin(color: false)
    checkWin(color: true)
  }
  func setColor(sender: UIButton, color: Bool) {
    if color { sender.backgroundColor = UIColor.red }
    else { sender.backgroundColor = UIColor.blue }
  }
  @IBAction func resetButtonPressed(_ sender: UIButton) {
    arr = [
      [0, 0, 0],
      [0, 0, 0],
      [0, 0, 0]
    ]
    b1.backgroundColor = UIColor.gray
    b2.backgroundColor = UIColor.gray
    b3.backgroundColor = UIColor.gray
    b4.backgroundColor = UIColor.gray
    b5.backgroundColor = UIColor.gray
    b6.backgroundColor = UIColor.gray
    b7.backgroundColor = UIColor.gray
    b8.backgroundColor = UIColor.gray
    b9.backgroundColor = UIColor.gray
  }
  func checkWin(color: Bool) {
    // true is red, blue is false
    var win: Bool = false
    if ((arr[0][0] as? Bool == color && arr[0][1] as? Bool == color && arr[0][2] as? Bool == color)
      || (arr[1][0] as? Bool == color && arr[1][1] as? Bool == color && arr[1][2] as? Bool == color)
      || (arr[2][0] as? Bool == color && arr[2][1] as? Bool == color && arr[2][2] as? Bool == color)
      || (arr[0][0] as? Bool == color && arr[1][0] as? Bool == color && arr[2][0] as? Bool == color)
      || (arr[0][1] as? Bool == color && arr[1][1] as? Bool == color && arr[2][1] as? Bool == color)
      || (arr[0][2] as? Bool == color && arr[1][2] as? Bool == color && arr[2][2] as? Bool == color)
      || (arr[0][0] as? Bool == color && arr[1][1] as? Bool == color && arr[2][2] as? Bool == color)
      || (arr[0][2] as? Bool == color && arr[1][1] as? Bool == color && arr[2][0] as? Bool == color)){
      win = true
    }
    if win {
      if color { winnerLabel.text = "Red wins!" }
      else { winnerLabel.text = "Blue wins!" }
      arr = [
        [-1, -1, -1],
        [-1, -1, -1],
        [-1, -1, -1]
      ]
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

