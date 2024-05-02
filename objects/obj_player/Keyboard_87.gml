event_perform(ev_keyboard, vk_up)
isMoving = true

if (isMoving == true) {
    // If the player is walking, play the walking sound
    if (!audio_is_playing(snd_walk)) {
         audio_play_sound(snd_walk, 1 ,false)
    }
} else {
    // If the player is not walking, pause the walking sound if it's playing
    if (isMoving == false) {
        audio_pause_sound(snd_walk);
    }
}