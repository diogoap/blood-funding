//
//  BloodDonateViewController.swift
//  BloodFunding
//
//  Created by Diogo Augusto Pereira on 16/01/19.
//  Copyright © 2019 Diogo Augusto Pereira. All rights reserved.
//

import UIKit

class BloodDonateViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UINavigationControllerDelegate {
    
    var donationPlaces = [String]()
    
    @IBAction func btnCancel(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var pvDonationPlaces: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pvDonationPlaces.delegate = self
        self.pvDonationPlaces.dataSource = self
        
        donationPlaces = ["Porto Alegre", "Canoas", "São Leopoldo", "Novo Hamburgo"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return donationPlaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return donationPlaces[row]
    }
    
    
    
    @IBOutlet weak var imageTake: UIImageView!
    var imagePicker: UIImagePickerController!
    
    enum ImageSource {
        case photoLibrary
        case camera
    }
    
    @IBAction func takePhoto(_ sender: UIButton) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            selectImageFrom(.photoLibrary)
            return
        }
        selectImageFrom(.camera)
    }
    
    func selectImageFrom(_ source: ImageSource){
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        switch source {
        case .camera:
            imagePicker.sourceType = .camera
        case .photoLibrary:
            imagePicker.sourceType = .photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    
    //MARK: - Saving Image here
    @IBAction func save(_ sender: AnyObject) {
        guard let selectedImage = imageTake.image else {
            print("Image not found!")
            return
        }
        UIImageWriteToSavedPhotosAlbum(selectedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    //MARK: - Add image to Library
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            showAlertWith(title: "Save error", message: error.localizedDescription)
        } else {
            showAlertWith(title: "Saved!", message: "Your image has been saved to your photos.")
        }
    }
    
    func showAlertWith(title: String, message: String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }

}

extension BloodDonateViewController: UIImagePickerControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        imagePicker.dismiss(animated: true, completion: nil)
        guard let selectedImage = info[.originalImage] as? UIImage else {
            print("Image not found!")
            return
        }
        imageTake.image = selectedImage
    }
}
