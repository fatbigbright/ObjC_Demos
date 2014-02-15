//
//  CardGameViewController.m
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-9.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMachingGame.h"

@interface CardGameViewController ()

@property (nonatomic, strong) Deck *deck;

@property (nonatomic) int flipCount;
@property (nonatomic, strong) CardMachingGame *game;

//Pay attention that order of OutletColletion can not be depended on
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

-(Deck *)createDeck
{
    return [[PlayCardDeck alloc] init];
}

-(Deck *)deck
{
    if(!_deck){
        _deck = [self createDeck];
    }
    return _deck;
}

-(CardMachingGame *)game{
    if(!_game) _game = [[CardMachingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    
    return _game;
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
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void)updateUI
{
    for(UIButton *cardButton in self.cardButtons){
        NSUInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        
        [cardButton setTitle:[self titleForCard: card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
}

-(NSString *)titleForCard:(Card *)card{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

@end
