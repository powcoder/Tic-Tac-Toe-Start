//
//  GameViewController.m
//  Tic-Tac-Toe
//
//  
//

#import "GameViewController.h"
#import "MyUIButton.h"
#import "Game.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet MyUIButton *grid00Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid01Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid02Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid10Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid11Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid12Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid20Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid21Button;
@property (weak, nonatomic) IBOutlet MyUIButton *grid22Button;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (strong, nonatomic) Game *game;

@property (strong, nonatomic) NSArray *gridButtons;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.gridButtons = [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects: self.grid00Button, self.grid01Button, self.grid02Button, nil],
                        [[NSArray alloc] initWithObjects: self.grid10Button, self.grid11Button, self.grid12Button, nil],
                        [[NSArray alloc] initWithObjects: self.grid20Button, self.grid21Button, self.grid22Button, nil],
                        nil];
    
    for (int x = 0; x < 3; x ++) {
        for (int y = 0; y < 3; y ++) {
            MyUIButton * currentButton = self.gridButtons[x][y];
            currentButton.x = x;
            currentButton.y = y;
        }
    }
    
    // TODO: Finish this method
    // Please set the user name of player X to your name, and the user name of player O to a random name.
    
    
    
    
    
    
    
    
    
    
}

- (IBAction)gridButtonPressed:(MyUIButton *)sender {
    // TODO: Finish this method
    
    
    
    
    
    
    
    
    
    
    
    
}

- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {
    // TODO: Finish this method
    // When the user tries to manually change the next player, we should stop them.
    
    
    
    
    
    
    
    
    
    
    
}

- (void) announceWinner: (NSString *) winner andIsTie: (BOOL) isTie {
    // Feel free to read this method, but do not change anything here
    
    NSString * msg;
    
    if (isTie) {
        msg = @"Tie";
    } else {
        msg = [NSString stringWithFormat: @"%@ wins", winner];
    }
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Game Over"
                                   message: msg
                                   preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {[self restart];}];
     
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion: nil];
    
    
}

- (void) restart {
    // Feel free to read this method, but do not change anything here
    
    for (int x = 0; x < 3; x ++) {
        for (int y = 0; y < 3; y ++) {
            MyUIButton * currentButton = self.gridButtons[x][y];
            
            [currentButton setTitle: @"" forState: UIControlStateNormal];
            
            currentButton.enabled = YES;
        }
    }
    
    self.game = [[Game alloc] initWithPlayerX:@"" andPlayerO:@""];
    
    self.segmentedControl.selectedSegmentIndex = 0;
}

- (IBAction)restartButtonPressed:(id)sender {
    // Feel free to read this method, but do not change anything here
    
    [self restart];
}

@end
