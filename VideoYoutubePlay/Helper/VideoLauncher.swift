//
//  VideoLauncher.swift
//  VideoYoutubePlay
//
//  Created by cristian ayala on 1/5/20.
//  Copyright © 2020 cristian ayala. All rights reserved.
//

import UIKit

class VideoLauncher : NSObject {
    func showVideoPlayer(){
        print("showing video player animation...")
        if let keywindow = UIApplication.shared.keyWindow{
            let view = UIView(frame: keywindow.frame)
            view.backgroundColor = .white
            
            view.frame = CGRect(x: keywindow.frame.width - 10, y: keywindow.frame.height-10, width: 10, height: 10)
            
            let height = keywindow.frame.width * 9 / 16
            let videoPlayerFrame = CGRect(x: 0, y: 0, width: keywindow.frame.width, height: height)
            let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
            view.addSubview(videoPlayerView)
            keywindow.addSubview(view)
            UIView.animate(withDuration: 0.5, delay: 0,usingSpringWithDamping: 1,initialSpringVelocity: 1,options: .curveEaseOut,animations: {
                view.frame = keywindow.frame
            },completion: { (completedAnimation) in
                // do something
                UIApplication.shared.setStatusBarHidden(true, with: .fade)
            })
        }
        
    }
}
