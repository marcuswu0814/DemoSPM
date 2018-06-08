import Rainbow
import Commander
import DemoSPMCore

Group {
    
    $0.command("hello") { (name: String) in
        print("Hello \(name)".green)
    }
    
    $0.command("add", { (lhs: Int, rhs: Int) in
        let computer = Computer()
        
        let answer = computer.add(lhs, rhs: rhs)
        
        print("\(answer)".green)
    })
    
    
    
}.run()
