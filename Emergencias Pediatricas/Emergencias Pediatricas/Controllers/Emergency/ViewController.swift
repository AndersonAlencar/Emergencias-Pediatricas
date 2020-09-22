//
//  ViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 19/09/20.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var emergencyCollection: UICollectionView!
    @IBOutlet weak var informatonBT: UIButton!
    @IBOutlet weak var imgCollection: UIImageView!
    @IBOutlet weak var nameEmergency: UILabel!
    
    var images = [UIImage(named: "paradaCardio"),UIImage(named: "queimadura"),UIImage(named: "queda"),UIImage(named: "afogamento"),UIImage(named: "engasgo"),UIImage(named: "choque")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureInformationButton()
        
        //collectionview
        configureCollection()
        
        //navigationBar
        let logo = UIImage(named: "logo")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.13, green: 0.80, blue: 0.80, alpha: 1.00)
    }
    
    func configureInformationButton() {
        let spacing:CGFloat = 10; // the amount of spacing to appear between image and title
        informatonBT.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing);
        informatonBT.titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0);
        informatonBT.layer.cornerRadius = 8
    }
    
    func configureCollection() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        
        
        emergencyCollection.delegate = self
        emergencyCollection.dataSource = self
        emergencyCollection.collectionViewLayout = flowLayout
        emergencyCollection.register(EmergencyCollectionViewCell.self, forCellWithReuseIdentifier: "CategoryCell")
        emergencyCollection.backgroundColor = UIColor(red: 0.96, green: 1.00, blue: 1.00, alpha: 1.00)
        emergencyCollection.showsVerticalScrollIndicator = false
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! EmergencyCollectionViewCell
        cell.configureCell(name: "Queimadura", imageEmergency: images[indexPath.row]!)
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let subcategoryController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SubCategory") as? SubCategoryViewController
        subcategoryController?.emergency = Emergency.mockData
        self.navigationController?.pushViewController(subcategoryController!, animated: true)

    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = emergencyCollection.bounds
        return CGSize(width: size.width/2.2, height: size.width/2.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10) // adicionar espaçamento interno a célula
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

