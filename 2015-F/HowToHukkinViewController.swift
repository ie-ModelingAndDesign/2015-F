
import Foundation
import UIKit
import AVFoundation
import CoreMedia

class HowToHukkinViewController: UIViewController {
    var playerItem : AVPlayerItem!
    var videoPlayer : AVPlayer!
    var seekBar : UISlider!
    
    override func viewDidLoad() {
        let path = NSBundle.mainBundle().pathForResource("IMG_0588", ofType: "m4v")
        let fileURL = NSURL(fileURLWithPath: path!)
        let avAsset = AVURLAsset(URL: fileURL, options: nil)
        
        // AVPlayerに再生させるアイテムを生成.
        playerItem = AVPlayerItem(asset: avAsset)
        
        // AVPlayerを生成.
        videoPlayer = AVPlayer(playerItem: playerItem)
        
        // Viewを生成.
        let videoPlayerView = AVPlayerView(frame: self.view.bounds)
        
        // UIViewのレイヤーをAVPlayerLayerにする.
        let layer = videoPlayerView.layer as! AVPlayerLayer
        layer.videoGravity = AVLayerVideoGravityResizeAspect
        layer.player = videoPlayer
        
        // レイヤーを追加する.
        self.view.layer.addSublayer(layer)
        
        
        videoPlayer.seekToTime(CMTimeMakeWithSeconds(0, Int32(NSEC_PER_SEC)))
        videoPlayer.play()
        
        
        //やり方label
        let howtoLabel: UILabel = UILabel(frame: CGRectMake(0,0,100,50))
        howtoLabel.backgroundColor = UIColor.grayColor()
        howtoLabel.text = "やり方"
        howtoLabel.textColor = UIColor.whiteColor()
        howtoLabel.textAlignment = NSTextAlignment.Center
        howtoLabel.layer.position = CGPoint(x: self.view.bounds.width/3,y: 100)
        self.view.addSubview(howtoLabel)
        
        //next button
        let saveButton: UIButton = UIButton(frame: CGRectMake(0,0,100,100))
        saveButton.backgroundColor = UIColor.redColor();
        saveButton.layer.masksToBounds = true
        saveButton.setTitle("Next", forState: .Normal)
        saveButton.layer.cornerRadius = 20.0
        saveButton.layer.position = CGPoint(x: 350 , y: 650)
        saveButton.addTarget(self, action: "onClickSaveButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(saveButton)


    }
    
    internal func onClickSaveButton(sender: UIButton){
        let mySecondViewController: HukkinViewController = HukkinViewController()
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
}



// レイヤーをAVPlayerLayerにする為のラッパークラス.
class AVPlayerView : UIView{
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override class func layerClass() -> AnyClass{
        return AVPlayerLayer.self
    }
    
}