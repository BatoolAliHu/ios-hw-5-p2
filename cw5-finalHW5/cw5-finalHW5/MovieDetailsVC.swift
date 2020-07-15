//
//  ViewController.swift
//  Lion King
//
//  Created by Batool Hussain on 15/7/20.
//  Copyright © 2020 GeeCodes. All rights reserved.
//

import UIKit
import AVFoundation

class MovieDetailsVC: UIViewController {
    
    var movieData: moviesModel!
    var backgroundMusic: AVAudioPlayer?
    
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var characterImg1: UIImageView!
    @IBOutlet weak var characterName1: UILabel!
    @IBOutlet weak var characterImg2: UIImageView!
    @IBOutlet weak var characterName2: UILabel!
    @IBOutlet weak var characterImg3: UIImageView!
    @IBOutlet weak var characterName3: UILabel!
    @IBOutlet weak var characterImg4: UIImageView!
    @IBOutlet weak var characterName4: UILabel!
    @IBOutlet weak var characterImg5: UIImageView!
    @IBOutlet weak var characterName5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        playBackgroundMusic(musicName: "LionKing.m4a")
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var musicImageView: UIImageView!
    
    func playBackgroundMusic(musicName: String){
        let path = Bundle.main.path(forResource: musicName, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            backgroundMusic = try AVAudioPlayer(contentsOf: url)
            backgroundMusic?.play()
        } catch {
            
        }
        
    }
    
    func setMovieDetails(){
      movieName.title = movieData.movieName
        self.movieImg.image = UIImage(named: movieData.movieName)
        self.movieRated.text = movieData.rated
        self.movieRating.text = String(movieData.rating)
        self.movieReleaseDate.text = String(movieData.movieReleaseDate)
        self.characterImg1.image = UIImage(named: movieData.characters[0])
        self.characterName1.text = movieData.characters[0]
        self.characterImg2.image = UIImage(named: movieData.characters[1])
        self.characterName2.text = movieData.characters[1]
        self.characterImg3.image = UIImage(named: movieData.characters[2])
        self.characterName3.text = movieData.characters[2]
        self.characterImg4.image = UIImage(named: movieData.characters[3])
        self.characterName4.text = movieData.characters[3]
        self.characterImg5.image = UIImage(named: movieData.characters[4])
        self.characterName5.text = movieData.characters[4]
    }
    
    
}
