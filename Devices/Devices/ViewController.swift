//
//  ViewController.swift
//  Devices
//
//  Created by Thiago Valentim on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var listModels:[Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configCollectionView()
        
    }

    private func configCollectionView(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        //definindo o sentido que a collection irá scrolar
        if let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .vertical
        }
        //register cell
        self.collectionView.register(ModelsCollectionViewCell.nib(), forCellWithReuseIdentifier: ModelsCollectionViewCell.identifier)
        self.configArrayModel()
    }
    
    func configArrayModel(){
        self.listModels.append(Profile(image: UIImage(named: "iPhone2") ?? UIImage(), name: "iPhone 2 (2007)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone3G:3GS") ?? UIImage(), name: "iPhone 3 e 3GS (2008/2009)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone4:4S") ?? UIImage(), name: "iPhone 4 e 4S (2010/2011)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone5:5S") ?? UIImage(), name: "iPhone 5 e 5S (2012/2013)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone5C") ?? UIImage(), name: "iPhone 5C (2013)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone6:6Plus:6S") ?? UIImage(), name: "iPhone 6 e 6S (2014/2015)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhoneSE") ?? UIImage(), name: "iPhone SE (2016)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone7") ?? UIImage(), name: "iPhone 7 e 7Plus (2016)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone8") ?? UIImage(), name: "iPhone 8 e 8Plus (2017)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhoneX") ?? UIImage(), name: "iPhone X (2017)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhoneXR:XS") ?? UIImage(), name: "iPhone XR,XS e XSMax (2018)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone11:11Pro") ?? UIImage(), name: "iPhone 11,11Pro e 11ProMax (2019)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhoneSE2") ?? UIImage(), name: "iPhone SE (2020)"))
        
        self.listModels.append(Profile(image: UIImage(named: "iPhone12:12Pro") ?? UIImage(), name: "iPhone 12, 12 Pro,12 ProMax e 12 mini (2020)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhone13:13Pro") ?? UIImage(), name: "iPhone 13, 13 Pro, 13 ProMax e 12 mini (2021)"))
        self.listModels.append(Profile(image: UIImage(named: "iPhoneSE3") ?? UIImage(), name: "iPhone SE (2021)"))
        
        
    }
}


extension ViewController:UICollectionViewDelegate{
    
}
extension ViewController:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ModelsCollectionViewCell.identifier, for: indexPath) as? ModelsCollectionViewCell
        cell?.setUpCell(profile: self.listModels[indexPath.item])
        return  cell ?? UICollectionViewCell()
    }
    
    // Setando tamanho
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = collectionView.frame.size.width/2
    
        return CGSize (width: width/2, height:width)
        // para a cell retornar pegando o width total da tela
//        return CGSize(width: self.view.frame.width, height: 120)
    }
    
}



