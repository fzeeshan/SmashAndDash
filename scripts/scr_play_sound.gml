if audio_system() == audio_old_system
    {
    sound_volume(argument0,argument2);
    sound_stop(argument0);
    sound_play(argument0);
    }
 else
    {
    audio_play_sound(argument0,argument1,0);
    }
