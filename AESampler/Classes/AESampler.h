//
//  AESampler.h
//  AESamplerTest
//
//  Created by David O'Neill on 1/10/17.
//  Copyright © 2017 David O'Neill. All rights reserved.
//

#import <TheAmazingAudioEngine/TheAmazingAudioEngine.h>
#import <AUPresetManager/AUPresetManager.h>

@interface AESampler : AEAudioUnitChannel
@property NSDictionary *preset;
-(instancetype)initWithFilePaths:(NSArray <NSString *>*)filePaths;
-(void)noteOn:(int)note;
-(void)noteOff:(int)note;
-(void)noteOn:(int)note velocity:(int)velocity;
-(void)noteOff:(int)note velocity:(int)velocity;
void AESamplerNoteOn(AESampler *sampler, int note, int velocity, int framesOffset);
void AESamplerNoteOff(AESampler *sampler, int note, int velocity, int framesOffset);
@end
