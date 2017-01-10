//
//  AESampler.m
//  AESamplerTest
//
//  Created by David O'Neill on 1/10/17.
//  Copyright © 2017 David O'Neill. All rights reserved.
//

#import "AESampler.h"

#define NOTEON 144
#define NOTEOFF 128

@implementation AESampler{
    NSDictionary *_preset;
}
-(instancetype)initWithFilePaths:(NSArray <NSString *>*)filePaths{
    AudioComponentDescription description = {0};
    description.componentManufacturer = kAudioUnitManufacturer_Apple;
    description.componentType = kAudioUnitType_MusicDevice;
    description.componentSubType = kAudioUnitSubType_Sampler;
    self = [super initWithComponentDescription:description];
    if (self) {
        _preset = filePaths ? [AUPresetManager presetWithFilePaths:filePaths oneShot:1] : NULL;
    }
    return self;
}

-(instancetype)init{
    return [self initWithFilePaths:NULL];
}
-(void)setupWithAudioController:(AEAudioController *)audioController{
    [super setupWithAudioController:audioController];
    [self setPreset:_preset];
}
-(void)setPreset:(NSDictionary *)preset{
    _preset = preset;
    if (_preset) {
        [AUPresetManager setPreset:_preset forSampler:self.audioUnit];
    }
}
-(NSDictionary *)preset{
    return _preset;
}
-(void)noteOn:(int)note{
    AESamplerNoteOn(self, note, 128, 0);
}
-(void)noteOff:(int)note{
    AESamplerNoteOff(self, note, 128, 0);
}
-(void)noteOn:(int)note velocity:(int)velocity{
    AESamplerNoteOn(self, note, velocity, 0);
}
-(void)noteOff:(int)note velocity:(int)velocity{
    AESamplerNoteOff(self, note, velocity, 0);
}
void AESamplerNoteOn(AESampler *sampler, int note, int velocity, int framesOffset){
    MusicDeviceMIDIEvent(AEAudioUnitChannelGetAudioUnit(sampler),NOTEON,note,velocity,framesOffset);
}
void AESamplerNoteOff(AESampler *sampler, int note, int velocity, int framesOffset){
    MusicDeviceMIDIEvent(AEAudioUnitChannelGetAudioUnit(sampler),NOTEOFF,note,velocity,framesOffset);
}

@end











