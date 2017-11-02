//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Cliff Gurske on 10/20/17.
//  Copyright © 2017 Cliff Gurske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
	
	var randomBallNumber = 0
	
	
	@IBOutlet weak var imageView: UIImageView!
	
	@IBAction func askButtonPressed(_ sender: UIButton) {
		
			newBallImage()
	}
	
	func newBallImage() {
		//get random number
		randomBallNumber = Int(arc4random_uniform(5))
		//take that random number and choose a picture from the "ball" pictures in array.
		imageView.image = UIImage(named: ballArray[randomBallNumber])
	
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//get a new ball image each time the app loads.
		newBallImage()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	//updates 8Ball Image after shake motion has ended.
	override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
		
		newBallImage()
	}


}

