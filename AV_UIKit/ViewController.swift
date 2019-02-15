//
//  ViewController.swift
//  AV_UIKit
//
//  Created by RiverLi on 2019/2/13.
//  Copyright © 2019 RiverLi. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController,
UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("info = " + info.description);
        picker.dismiss(animated: true, completion: nil);
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("cancel");
        picker.dismiss(animated: true, completion: nil);
    }
    
    //MARK: actions
    @IBAction func takeVideo(_ sender: UIButton) {
        let vc :UIImagePickerController = UIImagePickerController.init()
        vc.sourceType = UIImagePickerControllerSourceType.camera
        
        let requiredTypeMovie = kUTTypeMovie as String //拍视频
        vc.mediaTypes = [requiredTypeMovie] //录制类型
        vc.allowsEditing = true //是否允许编辑
        vc.videoQuality = .typeHigh  //视频质量
        vc.videoMaximumDuration = 10 //录制时长
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func takePhoto(_ sender: UIButton) {
        let vc :UIImagePickerController = UIImagePickerController.init()
        vc.sourceType = UIImagePickerControllerSourceType.camera

        let requiredTypeImage = kUTTypeImage as String //拍照
        vc.mediaTypes = [requiredTypeImage] //录制类型
//        vc.allowsEditing = true //是否允许编辑
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func goPhotoLibrary(_ sender: UIButton) {
        let vc :UIImagePickerController = UIImagePickerController.init()
        vc.sourceType = UIImagePickerControllerSourceType.photoLibrary //相册
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func goSavedPhotosAlbum(_ sender: UIButton) {
        let vc :UIImagePickerController = UIImagePickerController.init()
        vc.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum //相片列表，时刻
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }

}

