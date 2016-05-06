//
//  AgresionesVC.swift
//  OTP Avanzado
//
//  Created by Miwe sfx on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class AgresionesVC: UITableViewController{
    
    
    var NombresArray = [String]()
    var EnlacesArray = [String]()
    var ImagenesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NombresArray = ["Golpes directos: control arriba","Golpes directos: control al suelo","Golpes circulares: control arrriba","Golpes circulares: control al suelo", "Golpes ascendentes: control arrriba", "Golpes ascendentes: control al suelo", "Golpes descendentes: control al suelo", "Arma contundente: control al suelo", "Arma blanca: control al suelo","Atáque súbito arma blanca"]
        
        EnlacesArray = ["http://videos.escuelaprevencionviolencia.es/otp/golpes-direct-arri.mp4", "http://videos.escuelaprevencionviolencia.es/otp/golpes-direct-sue.mp4", "http://videos.escuelaprevencionviolencia.es/otp/golpes-cir-arri.mp4", "hhttp://videos.escuelaprevencionviolencia.es/otp/golpes-cir-sue.mp4", "http://videos.escuelaprevencionviolencia.es/otp/golpes-asce-arri.mp4", "http://videos.escuelaprevencionviolencia.es/otp/golpes-asce-sue.mp4", "http://videos.escuelaprevencionviolencia.es/otp/golpes-desc-sue.mp4", "http://videos.escuelaprevencionviolencia.es/otp/ante- ar-cont.mp4", "http://videos.escuelaprevencionviolencia.es/otp/amen-ar-blan.mp4","http://videos.escuelaprevencionviolencia.es/otp/ata-ar-blan.mp4"]
        
        ImagenesArray = ["posicion seguridad","posicion guardia","distancias","desplazamientos","esquiva directo","esquiva circular","desvio directo","bloqueo circular","bloqueo ascendente","Otra"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NombresArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = NombresArray[indexPath.row]
        Cell.textLabel?.textColor = UIColor.whiteColor()
        Cell.imageView?.image = UIImage(named: ImagenesArray[indexPath.row])
        
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        let direccion = NSURL(string: EnlacesArray[indexPath.row])!
        
        let DestViewController = segue.destinationViewController as! AVPlayerViewController
        
        DestViewController.player = AVPlayer(URL: direccion)
        DestViewController.player?.play()
    }
}
