//
//  ViewController.swift
//  SampleUICollectionView
//
//  Created by home on 2020/10/27.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadRecommendPlace()
    }

    private func loadRecommendPlace() {
        let parameters = ["ServiceKey":Environment.apiKey, "pageNo":"1", "numOfRows":"10", "trrsrtNm":"", "resultType":"json"]
        // print(parameters)
        AF.request("http://apis.data.go.kr/3330000/HeaundaeTourAttrInfoService/getTourAttrList?", parameters: parameters, encoder: URLEncodedFormParameterEncoder.default).response { response in
            // print(response)
        }
    }

}

