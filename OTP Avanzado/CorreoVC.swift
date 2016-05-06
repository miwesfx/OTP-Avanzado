//
//  CorreoVC.swift
//  OTP Avanzado
//
//  Created by Miwe sfx on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import MessageUI

class CorreoVC: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var remitente: UITextField!
    @IBOutlet weak var consulta: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(CorreoVC.DismissKeyboard))
        self.view.addGestureRecognizer(tap)
        
        consulta.layer.cornerRadius = 7.0
    }
    
    override func viewDidAppear(animated: Bool) {
        consulta.text = "[Escriba su consulta aquí]"
        consulta.font = UIFont(name: "Arial", size: 18)
        consulta.textAlignment = NSTextAlignment.Justified
    }
    
    func DismissKeyboard()
    {
        self.view.endEditing(true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enviar(sender: AnyObject) {
        var TextoRemitente = "Remitente: "
        TextoRemitente += remitente.text!
        
        let CuerpoMensaje = consulta
        
        let Destinatarios = ["operativatacticapolicial@gmail.com"]
        
        let mc: MFMailComposeViewController = MFMailComposeViewController ()
        mc.mailComposeDelegate = self
        mc.setSubject(TextoRemitente)
        
        mc.setMessageBody(CuerpoMensaje.text, isHTML: false)
        
        mc.setToRecipients(Destinatarios)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue
        {
        case MFMailComposeResultCancelled.rawValue:
            NSLog("Correo cancelado")
        case MFMailComposeResultSaved.rawValue:
            NSLog("Correo guardado")
        case MFMailComposeResultSent.rawValue:
            NSLog("Correo enviado")
        case MFMailComposeResultFailed.rawValue:
            NSLog("Envío de correo fallido: %@", [error!.localizedDescription])
        default:
            break;
        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

