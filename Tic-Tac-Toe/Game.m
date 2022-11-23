//
//  Game.m
//  Tic-Tac-Toe
//
//   
//

#import "Game.h"

@implementation Game

- (instancetype) initWithPlayerX: (NSString *) xName andPlayerO: (NSString *) oName {
    // TODO: Finish this method
    
    
    
    
    
    
    
    
    
    
}

- (instancetype) init {
    // TODO: Finish this method
    
    
    
    
    
    
    
    
    
    
}

- (BOOL) setValueForX: (int) x andY: (int) y {
    // TODO: Finish this method
    
    
    
    
    
    
    
    
    
    
}

- (BOOL) isEnd {
    // TODO: Finish this method
    // Remember to use the provided method “checkWinnerFor:” to check if “X” or “O” wins the game
    
    
    
    
    
    
    
    
    
    
}

- (NSMutableArray *) gridGenerator {
    // Feel free to read this method, but do not change anything here
    
    return [NSMutableArray arrayWithObjects:
    [NSMutableArray arrayWithObjects: @"", @"", @"", nil],
    [NSMutableArray arrayWithObjects: @"", @"", @"", nil],
    [NSMutableArray arrayWithObjects: @"", @"", @"", nil], nil];
}

- (BOOL) checkWinnerFor: (NSString *) player {
    // Feel free to read this method to understand how to use _grid[x][y], but do not change anything here
    
    // for each coloum
    for (int i = 0; i < 3; i ++) {
        BOOL win = true;
        
        for (int j = 0; j < 3; j ++) {
            if (![_grid[i][j] isEqualToString: player]) {
                win = false;
                
                break;
            }
        }
        
        if (win) {
            return true;
        }
    }
    
    // for each row
    for (int i = 0; i < 3; i ++) {
        BOOL win = true;
        
        for (int j = 0; j < 3; j ++) {
            if (![_grid[j][i] isEqualToString: player]) {
                win = false;
                
                break;
            }
        }
        
        if (win) {
            return true;
        }
    }
    
    // for the diagonal
    if (([_grid[0][0] isEqualToString: player] && [_grid[1][1] isEqualToString: player] && [_grid[2][2] isEqualToString: player]) ||
        ([_grid[2][0] isEqualToString: player] && [_grid[1][1] isEqualToString: player] && [_grid[0][2] isEqualToString: player])) {
        return true;
    }
    
    return false;
}

@end
