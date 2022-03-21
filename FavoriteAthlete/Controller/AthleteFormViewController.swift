//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Joy Marie on 3/19/22.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?

    @IBOutlet var nameText: UITextField!
    @IBOutlet var ageText: UITextField!
    @IBOutlet var leagueText: UITextField!
    @IBOutlet var teamText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFormView()

    }
    
    @IBAction func persist(_ sender: Any) {
        
        guard let name = nameText.text,
              let ageString = ageText.text,
              let age = Int(ageString),
              let league = leagueText.text,
              let team = teamText.text
        else { return }
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
          
    }
    
    func updateFormView() {
        
        if let confirmedAthlete = athlete {
            print("confirmed \(confirmedAthlete)!")
            
            nameText.text = confirmedAthlete.name
            ageText.text = String(confirmedAthlete.age)
            leagueText.text = confirmedAthlete.league
            teamText.text = confirmedAthlete.team
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
