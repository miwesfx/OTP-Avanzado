//
//  OperativaVC.swift
//  OTP Avanzado
//
//  Created by Miguel on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class OperativaVC: UIViewController {
    
    @IBOutlet weak var controller: UISegmentedControl!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        texto.text = "Operativa táctica policial.\n\nTras estudios teórico-prácticos sobre las necesidades del Policía en el ejercicio de sus funciones, en el ámbito de la profesión que desarrolla a pie de calle, en el contexto de una sociedad democrática sometida al Estado de Derecho, según directrices de Naciones Unidas con el fin de  proteger a los ciudadanos, realizados desde el enfoque de la Prevención de Riesgos Laborales y la Prevención de riesgos en general, ofrecen unos protocolos, técnicas y procedimientos de intervención policial dirigidos específicamente a la labor de las Fuerzas y Cuerpos de Seguridad, los cuales denominamos Operativa Táctica Policial\nÚNICA FORMACIÓN EN INTERVENCION POLICIAL GARANTIZADA BAJO INVESTIGACIÓN CIENTÍFICA I+D+i."
        texto.textColor = UIColor.whiteColor()
        texto.font = UIFont(name: "Arial", size: 18)
        texto.textAlignment = NSTextAlignment.Justified
        imagen.image = UIImage(named: "banner3")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cambiarSeccion(sender: AnyObject) {
        if controller.selectedSegmentIndex == 0
        {
            texto.text = "Operativa táctica policial.\n\nTras estudios teórico-prácticos sobre las necesidades del Policía en el ejercicio de sus funciones, en el ámbito de la profesión que desarrolla a pie de calle, en el contexto de una sociedad democrática sometida al Estado de Derecho, según directrices de Naciones Unidas con el fin de  proteger a los ciudadanos, realizados desde el enfoque de la Prevención de Riesgos Laborales y la Prevención de riesgos en general, ofrecen unos protocolos, técnicas y procedimientos de intervención policial dirigidos específicamente a la labor de las Fuerzas y Cuerpos de Seguridad, los cuales denominamos Operativa\nÚNICA FORMACIÓN EN INTERVENCION POLICIAL GARANTIZADA BAJO INVESTIGACIÓN CIENTÍFICA I+D+i."
            texto.textColor = UIColor.whiteColor()
            texto.font = UIFont(name: "Arial", size: 18)
            texto.textAlignment = NSTextAlignment.Justified
            imagen.image = UIImage(named: "banner3")
            
        }
        if controller.selectedSegmentIndex == 1
        {
            texto.text = "Mencionar la cobertura de validez que se la da a  OTP desde  el \"Estudio criminológico sobre prevención de riesgos en la Policía Local de Cádiz, 2003-2011\", documento elaborado  por  José Carlos Vera en base a la formación continua en OTP, que  desde el año 1997 impartido, a toda la Plantilla de la policía local de Cádiz, lo cual ha facilitado la evolución de este sistema de intervención policial, adaptado a las necesidades del policía y a la protección de los ciudadanos/as."
            texto.textColor = UIColor.whiteColor()
            texto.font = UIFont(name: "Arial", size: 18)
            texto.textAlignment = NSTextAlignment.Justified
            imagen.image = UIImage(named: "banner2")
        }
        if controller.selectedSegmentIndex == 2
        {
            texto.text = "Los objetivos buscados y conseguidos donde se ha aplicado la OTP han sido:\n\nTener un sistema operativo de intervención aplicado totalmente a las necesidades del policía.\n\nRespetar los derechos fundamentales de los ciudadanos, cuidando escrupulosamente los puntos vitales de éstos en caso de  detención, estando bajo la revisión de la medicina legal.\n\nMejorar en la prevención de riesgos de los policías, profundizando en las medidas de seguridad de éstos.\n\nMinimizar las lesiones en los ciudadanos durante la intervención con los mismos, con los cambios propuestos durante la formación que ha impartida.\n\nDisminuir  bajas laborales en los policías, las cuales van de la mano durante los años de realización del estudio criminológico, de las horas de formación que ha impartido con los cambios que propuso en las formas de intervención.\n\nReducir las  denuncias contra los policías por uso indebido de la fuerza, al efectuar numerosos cambios en las técnicas que venían utilizando los policías en la intervención física anteriormente a la formación que impartida.\n\nReducir también las imputaciones penales y las posibles responsabilidades civiles, al minimizar las lesiones de los ciudadanos en las intervenciones físicas policiales.\n\nAumentar la  garantía y eficacia en la intervención policial de los policías, reforzándose la  seguridad en si mismo.\n\nMejorar la imagen publica de los policías locales al aumentar su profesionalidad en situaciones de riesgo.\n\nMayor autocontrol y capacidad de mediación, al subir la autoestima y seguridad en el policía en el desempeño de funciones.\n\nTratar de realizar un trabajo de vacunación y prevención con una formación continua en técnicas operativas.\n\n\nEn definitiva un mejor servicio a la ciudadanía acorde al estado de derecho en el que nos encontramos y en líneas marcadas por Naciones Unidas."
            texto.textColor = UIColor.whiteColor()
            texto.font = UIFont(name: "Arial", size: 18)
            texto.textAlignment = NSTextAlignment.Justified
            imagen.image = UIImage(named: "banner1")
        }

    }
    
    
    
}
