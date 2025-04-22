use_bpm 83
use_synth :piano


notkanye = "C:/Users/mekhi_washington/Downloads/Kanye West - I Guess Well Never Know (Grammys Speech).mp3"
keepPlaying = true

print(sample_duration notkanye)
#=begin
define :measure1 do
  in_thread do
    # Right Hand
    sleep 0.75
    play :c4, sustain: 0.25
    sleep 0.25
    play :c5, sustain: 0.5
    sleep 0.5
    play :f4, sustain: 1.5
    sleep 1.5
    play :c4, sustain: 0.5
    play :f4, sustain: 0.5
    play :c5, sustain: 0.5
    sleep 0.5
    play :f4, sustain: 0.5
    sleep 0.5
  end
  
  in_thread do
    # Left Hand
    play :d2, sustain: 0.75
    play :d3, sustain: 0.75
    sleep 0.75
    play :d3, sustain: 0.25
    sleep 0.25
    play :f3, sustain: 1.5
    sleep 1.5
    play :f4, sustain: 0.25
    sleep 0.25
    play :f4, sustain: 0.75
    play :d3, sustain: 0.75
    sleep 0.75
    play :d3, sustain: 0.25
    sleep 0.25
  end
end

define :measure2 do
  in_thread do
    # Right hand
    sleep 0.5
    sleep 0.25
    play :e4, sustain: 0.25
    sleep 0.25
    play :d5, sustain: 0.5
    sleep 0.5
    play :c4, sustain: 2
    play :a4, sustain: 2
    sleep 2
    play :c4, sustain: 0.5
    play :a4, sustain: 0.5
  end
  
  in_thread do
    # Left Hand
    play :e2, sustain: 1.5
    play :f3, sustain: 1.5
    sleep 1.5
    play :c3, sustain: 1.5
    play :f3, sustain: 1.5
    sleep 1.5
    play :c3, sustain: 1.5
    sleep 0.5
    play :e2, sustain: 0.5
    play :f3, sustain: 0.5
    sleep 0.5
    play :c2, sustain: 1
    play :e2, sustain: 1
    sleep 1
  end
end

define :measure3 do
  in_thread do
    # Right Hand
    sleep 0.75
    play :c4, sustain: 0.25
    sleep 0.25
    play :e4, sustain: 0.5
    play :d5, sustain: 0.5
    sleep 0.5
    play :a4, sustain: 1
    sleep 1
    play :a4, sustain: 0.25
    sleep 0.25
    play :e4, sustain: 0.25
    sleep 0.25
    play :e4, sustain: 0.5
    play :d5, sustain: 0.5
    sleep 0.5
    play :a4, sustain: 0.5
    sleep 0.5
  end
  
  in_thread do
    # Left Hand
    play :f2, sustain: 0.75
    play :f3, sustain: 0.75
    sleep 0.75
    play :f3, sustain: 1.5
    sleep 1.5
    play :f3, sustain: 0.25
    sleep 0.25
    play :f2, sustain: 1
    play :f3, sustain: 1
    sleep 1
  end
end

define :measure4 do
  in_thread do
    # Right Hand
    sleep 0.5
    sleep 0.25
    
    play :e4, sustain: 0.25
    sleep 0.25
    play :d5, sustain: 0.5
    sleep 0.5
    play :e4, sustain: 2
    play :a4, sustain: 2
    sleep 2
    play :e4, sustain: 0.5
    play :a4, sustain: 0.5
    sleep 0.5
  end
  
  in_thread do
    # Left Hand
    play :f2, sustain: 0.75
    play :f3, sustain: 0.75
    sleep 0.75
    play :e3, sustain: 0.75
    play :f3, sustain: 0.75
    sleep 0.75
    play :e3, sustain: 0.5
    sleep 0.5
    play :f2, sustain: 1
    play :f3, sustain: 1
    sleep 1
    play :c2, sustain: 1.5
    play :c3, sustain: 1.5
    sleep 1.5
  end
end

live_loop :cymbal do
  if keepPlaying == true
    sample :drum_cymbal_pedal
    sleep 1
  else
    stop
  end
end

sleep 4

live_loop :piano do
  if keepPlaying == true
    measure1
    sleep 4
    measure2
    sleep 4
    measure3
    sleep 4
    measure4
    sleep 4
  else
    stop
  end
end

sleep 3

live_loop :octavePiano do
  if keepPlaying == true
    with_fx :ping_pong do
      measure1
      sleep 4
      measure2
      sleep 4
      measure3
      sleep 4
      measure4
      sleep 4
    end
  else
    stop
  end
end

sleep 16

keepPlaying = false

sleep 8
#=end
s = 0
f = 0.25
a = 0

4.times do
  sample notkanye, start: s, finish: f, amp: a
  sleep 19.11/4
  s += 0.25
  f += 0.25
  a += 0.5
end

use_bpm 80

13.times do
  play :e6
  sleep 2
end
