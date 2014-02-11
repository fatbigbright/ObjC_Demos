//
//  CardGameViewController.m
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-9.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayCardDeck.h"

@interface CardGameViewController ()

@property (nonatomic, strong) Deck *deck;

@end

@implementation CardGameViewController

-(Deck *)deck
{
    if(!_deck){
        _deck = [[PlayCardDeck alloc]init];
    }
    return _deck;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchCardButton:(UIButton *)sender {
    if(sender.currentTitle.length > 0){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:[self.deck.drawRandomCard contents] forState:UIControlStateNormal];
    }
}

@end
