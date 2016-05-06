//
//  MasterVeraVC.swift
//  OTP Avanzado
//
//  Created by Miguel on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class MasterVeraVC: UIViewController {
    
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var texto: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
    }
    
    override func viewDidAppear(animated: Bool) {
        texto.text = "Títulos académicos oficiales:\n\n· Estudiante de Doctorado. Línea: Ingeniería Biomédica y Telemedicina. Universidad de Cádiz\n· Título de Máster Universitario en: PREVENCIÓN DE RIESGOS LABORALES\n· Título de Graduado en: CRIMINOLOGIA Y SEGURIDAD\n\n\nFormación académica complementaria:\n\n· Experto Universitario en Criminalidad y Seguridad Pública. (2008-2011) Universidad de Cádiz\n· Instructor Universitario de Operativa Táctica Policial. (2010-2011) Universidad de Cádiz\n· Técnico Deportivo Superior Kick Boxing (2007-2009)\n· Especialista en Preparación en Ciencias Policiales (2005-2007) Universidad de Valencia\n· Instructor en Protección Integral. (2007)\n\n\nFormación y titulación de federaciones deportivas:\n\n· Cinturón Negro 7º Grado de Kick Boxing (Federacion andaluza de Kick Boxing) 15 de junio de 2013\n· Cinturón Negro 5º Grado de Defensa Personal Táctica Policial (Federacion Española de Kick Boxing) 16 de mayo de 2009\n· Cinturón Negro 4º Grado de Defensa Personal (Federacion Española de Kick Boxing) 30 de octubre de 2005\n· Entrenador 3 Nivel de Kick boxing (Federación Española de Kick Boxing) 26 de septiembre de 1993\n· Instructor 3 Nivel de Defensa Personal Táctica Policial (Federacion Española de Kick Boxing) 30 de octubre de 2005\n· Instructor 3 Nivel de Defensa Personal (Federacion Española de Kick Boxing) 26 de noviembre de 2003\n\n\nTrabajo Fin de Grado en Criminología y Seguridad, con Mención en Seguridad, lo ha realizado sobre la \"INTERVENCION POLICIAL Y LA PREVENCION DE RIESGOS\"\n\n\nTrabajo Fin de Master Universitario en Prevención de Riesgos Laborales, lo ha encaminado al \"PROYECTO DE REGLAMENTO Y PLAN ESPECIFICO DE PREVENCIÓN DE RIESGOS LABORALES DE LA POLICÍA LOCAL DE CÁDIZ\".\n\n\nMiembro de Grupo de Investigación de Ingeniería Biomédica de la Universidad de Cádiz\n\n\nInvestigador de los proyectos I+D+I:\n\n· Proyecto de Investigación DER2012-35997-C03-02 “Medicina Legal y Protocolos de defensa policial”. desde la Universidad de Granada.\n\n· Proyecto de investigación DER2012-35997-C03-03 “Estudio de los materiales de las defensas policiales y posibles mejoras”, desde la Universidad de Cádiz.\n\n\nPresidente de la Asociación Escuela para la Prevención de la Violencia, con numero 11432 del registro de asociaciones de Andalucía, desde el 2 de abril de 2014 a actualidad, la cual entre sus fines, tiene el Fomento de actividades I+D+i, con conexiones internacionales.\n\n\nSus funciones en la policía local, han tenido un doble sentido: por un lado el desempeño del trabajo en unidades de trafico, seguridad ciudadana y grupos especiales, y, por otro lado, el ejercicio como Jefe de seminario área Tecnología policial de la Escuela de Seguridad Pública del Ayuntamiento de Cádiz, cuya formación ha proporcionado al policía conocimientos técnicos del uso, mantenimiento de equipos y medios específicos para su actuación, así como su adecuada formación física, técnica y psicológica en el desempeño de sus funciones y protección de la ciudadanía.\n\nPor otro lado, ha ejercido labores de Dirección, Coordinación y docencia  en diferentes títulos de expertos universitarios y de formación continua en la Universidad de Cádiz, en diferentes administraciones públicas y sindicatos, desarrollados a nivel nacional e internacional. Además ha dirigido y coordinado títulos de expertos universitarios y de formación continua en la Universidad de Cádiz, desarrollados a nivel nacional e internacional.\n\nSu experiencia en más de 20 años en la formación a policías de todo el mundo, le ha hecho ver la necesidad de implantar la formación en el ámbito específico policial desde la perspectiva de prevención de riesgos laborales, ya que el policía en definitiva hace uso de sus herramientas, las cuales van desde el uso de la palabra hasta el arma de fuego, siendo este mi punto de partida en la creación del primer Título de experto universitario: Instructor en técnicas de PRL en el ámbito específico policial y militar, del cual es Director.\n\n\nHISTORIAL DE COMPETICION EN LA MODALIDAD DE KICK BOXING\n\n· Subcampeón de Andalucía año 1998.\n\n· Campeón de Andalucía durante los años 89, 90, 91, 92, 93,94.\n\n· Subcampeón de España años 90,92.\n\n· Campeón de España año 1993.\n\n· Campeón de España Profesional año 1994."
        texto.textColor = UIColor.whiteColor()
        texto.font = UIFont(name: "Arial", size: 18)
        texto.textAlignment = NSTextAlignment.Justified
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let direccion = NSURL(string: "http://videos.escuelaprevencionviolencia.es/otp/biojcv.mov")!
        
        let DestViewController = segue.destinationViewController as! AVPlayerViewController
        
        DestViewController.player = AVPlayer(URL: direccion)
        DestViewController.player?.play()
    }
}
