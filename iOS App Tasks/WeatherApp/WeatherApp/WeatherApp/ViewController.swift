//
//  ViewController.swift
//  WeatherApp
//
//  Created by odc on 06/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtCity: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnShowWeather(_ sender: Any) {
        let city = txtCity.text!
        let url = "https://api.weatherapi.com/v1/current.json?key=95fdce2767cf4ed8a2e103647230604&q=\(city)&aqi=no"
        
        getData(url: url)
    }
    
    
    func getData(url: String){
        
        DispatchQueue.global().async {
            do{
                let AppURL =  URL(string: url)!
                let data = try Data(contentsOf: AppURL)
                let json = try JSONSerialization.jsonObject(with: data) as! [String:Any]
                let current = json["current"] as! [String:Any]
                let temp_c  = current["temp_c"]!
                let temp_f  = current["temp_f"]!
                DispatchQueue.main.sync {
                    self.lblResult.text = "Temp C = \(temp_c), Temp F = \(temp_f)"
                }
            }
            catch {
                print("Error: Can not load from server")
            }
        }
        
        
    }
}

