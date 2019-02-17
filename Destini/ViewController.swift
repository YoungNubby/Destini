//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    
    //idk what instance variables are, but check out this story index. Its like a game level to keep track of what chapter you are on. This is stop 5. Steps 1-4 we were inputting our variable button and text, and assigning them functions. Time to advance deeper into our plot.
    var storyIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        
        //storyTextView.text = story1
        //the .text attacks the text property of the storyTextView variable, this is (dot)notation
        //topButton.setTitle(answer1a, for: .normal)
        //bottomButton.setTitle(answer1b, for: .normal)
        
        restart()
        restartButton.isHidden = true
        
        //method topButton.setTitle(<#T##title: String?##String?#>, for: <#T##UIControl.State#>) ---you can replace the entire highlighted block. (dot)normal is a Ui Controller State, one of many options.
        
        //we are writing these functions because our buttons and text are changing? Otherwise we would just change the text property in the appearence section
        
        //why are we in the viewDidLoad override function?????*
        //I have written many notes on the layout/structure of the Xcode software. Would be beneficial to write some notes on the layout/structure of the Swift language
    }

    
    
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        //EVEN THOUGH BITCH HAS COMMENTS IN THE VIEW DID LOAD ABOUT TOPBUTTON AND BOTTOM BUTTOM, THIS, IS THR PLACE WHERE THAT SHIT WILL BE DIFFERENTIATED. Differentiated??
        
        // TODO Step 4: Write an IF-Statement to update the views
        //this is a pretty large IF-Statement. Get your layouts!!!
        if sender.tag == 1 && storyIndex == 1 {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3 //we just changed our storyIndex and "leveled up"
        } else if sender.tag == 2 && storyIndex == 1 {
            storyTextView.text = story2
            topButton.setTitle(answer2a, for: .normal)
            bottomButton.setTitle(answer2b, for: .normal)
            storyIndex = 2 }
        //bet theres a better way to do this =]
        else if sender.tag == 1 && storyIndex == 3 {
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        } else if sender.tag == 2 && storyIndex == 3 {
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        }   else if sender.tag == 1 && storyIndex == 2 {
            storyTextView.text = story3
            topButton.setTitle(answer3a, for: .normal)
            bottomButton.setTitle(answer3b, for: .normal)
            storyIndex = 3
        }   else if sender.tag == 2 && storyIndex == 2 {
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
            
        
            
            //else if sender.tag == 1 && storyIndex == 2
            //storyTextView.text = story3
            //topButton.setTitle(answer3a, for: .normal)
            //bottomButton.setTitle(answer3b, for: .normal)}
        //how do you keep track of all of these??
        
        //at this point, your story line is starting to repeat itself, we can assign the same function to multiple "indexs"
        //this looks like sender.tag == 1 && (storyIndex == 1 || storyIndex == 2)
        
        
        
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            restartButton.isHidden = false
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
        // "the IF-Statement" srsly fuck this bitch. Im way too po'd to not be given clear directions. This shit pisses me off. She cant write directions. Theres 2 if statements. The world hates me. Carry on. ;_; =]
    }
    
    
    @IBAction func restartPressed(_ sender: UIButton) {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
        
        //restart()
        
    }
    //she then goes on to create a function so "we dont have to write all that code. 1- we already wrote it 2- the function only gets used twice, in places where we have already wrote it..... -_-
    //tootiredtooannoyeddgaf
    
    func restart() {
        storyIndex = 1
        storyTextView.text = story1
        topButton.setTitle(answer1a, for: .normal)
        bottomButton.setTitle(answer1b, for: .normal)
    }
    

}
//
//
//
//
//
//
//
//
//
//
//
//
//
// Idk what was up but I did not have a good time making this app. annoyed and frustrated, most of the way through.
