//
//  DesarmesVC.swift
//  OTP Avanzado
//
//  Created by Miwe sfx on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DesarmesVC: UITableViewController{
    
    
    var NombresArray = [String]()
    var EnlacesArray = [String]()
    var ImagenesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NombresArray = ["Posición de seguridad","Posición de guardia","Distancias","Desplazamientos", "Esquivas parciales ante golpes directos", "Esquivas parciales ante golpes circulares", "Desvíos ante golpes directos", "Bloqueos ante golpes circulares", "Bloqueos ante golpes ascendentes"]
        
        EnlacesArray = ["http://videos.escuelaprevencionviolencia.es/otp/pseg.mp4", "http://videos.escuelaprevencionviolencia.es/otp/pgua.mp4", "http://videos.escuelaprevencionviolencia.es/otp/distan.mp4", "http://videos.escuelaprevencionviolencia.es/otp/desplaz.mp4", "http://videos.escuelaprevencionviolencia.es/otp/es-par-direc.mp4", "http://videos.escuelaprevencionviolencia.es/otp/es-par-cir.mp4", "http://videos.escuelaprevencionviolencia.es/otp/desvi-direc.mp4", "http://videos.escuelaprevencionviolencia.es/otp/bloq-cir.mp4", "http://videos.escuelaprevencionviolencia.es/otp/bloq-asc.mp4"]
        
        ImagenesArray = ["posicion seguridad","posicion guardia","distancias","desplazamientos","esquiva directo","esquiva circular","desvio directo","bloqueo circular","bloqueo ascendente"]
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
