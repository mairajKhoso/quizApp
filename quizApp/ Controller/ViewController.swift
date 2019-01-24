import UIKit
import AVFoundation
class ViewController: UIViewController,AVSpeechSynthesizerDelegate {

    
    //object of questionBank class
    let allQuestion = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    
    @IBOutlet weak var questionNumberLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLbl: UILabel!
    
    let synth = AVSpeechSynthesizer()
    //let utterance = AVSpeechUtterance(string: "mairaj is the boy")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        synth.delegate = self
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if questionNumber >= 13{
            if score < 8
            {
                let alert = UIAlertController(title: "SORRY!", message: "You have got \(score) You are FAIL in this Quiz do you want to start again", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                    self.startOver()
                }
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
            }
            else{
                let alert = UIAlertController(title: "Awesome", message: "You have got \(score)", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    switch action.style{
                    case .default:
                        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                        self.present(nextViewController, animated:true, completion:nil)
                    case .cancel:
                        print("cancel")
                    case .destructive:
                        print("destructive")
                    }
                }))
                present(alert, animated: true, completion: nil)
            }
            return
        }
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else if sender.tag == 2
        {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    @IBAction func SpeakerBtnPressed(_ sender: UIButton) {
        let string = questionLbl.text!
        let utterance = AVSpeechUtterance(string: string)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
//
//        let synth = AVSpeechSynthesizer()
//        synth.delegate = self
        synth.speak(utterance)
    }
    
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
//        print("start")
//    }
    
//
//    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
//        print("ended")
//    }
    func updateUI(){
        self.scoreLbl.text = "Score: \(score)"
        progressLbl.text = "\(questionNumber + 1)/13"
        questionNumberLbl.text = "Question # \(questionNumber + 1)"
        progressBar.frame.size.width = (view.frame.size.width/13)*CGFloat(questionNumber + 1)
    }
    func nextQuestion(){
        if questionNumber <= 12{
        questionLbl.text = allQuestion.list[questionNumber].question
            updateUI()
        }
        
    }
    func checkAnswer(){
        
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            let string = "Correct"
            let utterance = AVSpeechUtterance(string: string)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            synth.speak(utterance)
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else{
            let string = "Wrong"
            let utterance = AVSpeechUtterance(string: string)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            synth.speak(utterance)
            ProgressHUD.showSuccess("Correct")
            ProgressHUD.showError("Wrong")
        }
    }
    func startOver()
    {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    
    

}

