//
//  ViewController.swift
//  NavigationApp
//
//  Created by MyMacBook on 12.07.2022.
//

import UIKit

class ViewController: UIViewController {
  
  // Ссылка на сториборд, где размещен данный ViewController
  let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
  
  @IBAction func toGreenScene(_ sender: UIButton) {
    // получаем ссылку на следующий контроллер
    // в данном случае следующий - это зеленый
    let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
    // обращаемся к Navigation Controller
    // и вызываем метод перехода к новому контроллеру
    navigationController?.pushViewController(nextViewController, animated: true)
  }
  
  @IBAction func toYellowScene(_ sender: UIButton) {
    let nextViewController = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
    navigationController?.pushViewController(nextViewController, animated: true)
  }
  
  @IBAction func toRootScene(_ sender: UIButton) {
    navigationController?.popToRootViewController(animated: true)
  }
  
  @IBAction func toPreviousScene(_ sender: UIButton) {
    navigationController?.popViewController(animated: true)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.prompt = "Prompt"
    navigationItem.backButtonTitle = "Back"
    navigationItem.title = "Title of the scene"
  }
  



}

