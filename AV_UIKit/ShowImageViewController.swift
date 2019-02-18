//
//  ShowImageViewController.swift
//  AV_UIKit
//
//  Created by RiverLi on 2019/2/18.
//  Copyright © 2019 RiverLi. All rights reserved.
//

import UIKit
import Foundation

class ShowImageViewController: UIViewController {

    var info:Dictionary<String, Any> = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage
        
        let referenceURL = String(describing: info["UIImagePickerControllerReferenceURL"]) //引用位置
        print("referenceURL:" + referenceURL)
        
        let mediaType = String(describing: info["UIImagePickerControllerMediaType"]) // 文件类型
        print("mediaType:" + mediaType)
        
        let imageURL = String(describing: info["UIImagePickerControllerImageURL"]) // 绝对位置
        print("imageURL:" + imageURL)
        self.imageView.image = originalImage;
        
        let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage
        self.editImage.image = editedImage;
        
        let cropRect = String(describing: info["UIImagePickerControllerCropRect"]) //指定应用于原始图像的裁剪矩形。
        print("cropRect:" + cropRect)
        
    }
    @IBOutlet weak var editImage: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
}
