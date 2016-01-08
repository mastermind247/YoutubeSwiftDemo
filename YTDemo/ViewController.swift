//
//  ViewController.swift
//  YTDemo
//
//  Created by Parth Adroja on 1/8/16.
//  Copyright © 2016 Parth Adroja. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController,YTPlayerViewDelegate {

    @IBOutlet weak var IBvideoView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        IBvideoView.delegate = self
        self.IBvideoView.loadWithVideoId("i7P4hjusxB0", playerVars: ["playsinline":1])
//        https://www.youtube.com/watch?v=Zavgv7_rIwc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playerView(playerView: YTPlayerView!, didChangeToState state: YTPlayerState) {
        switch (state) {
        case YTPlayerState.Unstarted:
            print("Unstarted")
        case YTPlayerState.Playing:
            print("Playing")
        case YTPlayerState.Paused:
            print("Paused")
        case YTPlayerState.Buffering:
            print("Buffering")
        case YTPlayerState.Ended:
            print("Ended")
        default:
            break
        }
    }

}

