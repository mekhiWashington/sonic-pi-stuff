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

use_synth :piano
use_bpm 80

# Set initial values
set :playing, true
amp = 1
AdLib = "C:/Users/mekhi_washington/Downloads/LOOKATYA.wav"

with_fx :reverb do
  with_fx :level, amp: amp do |lvl|
    
    # Riffs
    riff1 = [:ab3, :e3, :ab3, :b3]
    riff2 = [:ab3, :eb3, :ab3, :b3]
    riff3 = [:e3, :db3, :e3, :ab3]
    riff4 = [:a3, :e3, :db3, :e3]
    
    
    
    define :intro do |note|
      3.times do
        play note, sustain: 2
        sleep 2
      end
      play note - 12, sustain: 2
      sleep 2
    end
    
    define :octaveNotes do |note|
      3.times do
        play note, sustain: 2
        sleep 1
        play note - 24, sustain: 2
        sleep 1
      end
      play note - 12, sustain: 2
    end
    
    define :left do |note|
      play note, sustain: 1
      sleep 1
      play note - 24, sustain: 1
    end
    
    # --- Intro ---
    intro :e6
    intro :eb6
    intro :db6
    3.times do
      play :a5, sustain: 2
      sleep 2
    end
    play :ab5, sustain: 2
    sleep 0.5
    play :e6
    sleep 0.5
    
    sample AdLib, finish: 0.5
    
    # --- Bass Loop ---
    live_loop :bass do
      if get(:playing)
        octaveNotes :e4
        sleep 1
        octaveNotes :e4
        sleep 1
        octaveNotes :eb4
        sleep 1
        octaveNotes :eb4
        sleep 1
        octaveNotes :db5
        sleep 1
        octaveNotes :a4
        sleep 1
        octaveNotes :a4
        sleep 1
      else
        stop
      end
    end
    
    # --- Riff 1 ---
    i = 0
    16.times do
      play riff1[i], sustain: 1
      i = (i + 1) % 4
      sleep 0.25
    end
    
    # --- Riff 2 ---
    16.times do
      play riff2[i], sustain: 1
      i = (i + 1) % 4
      sleep 0.25
    end
    
    # --- Riff 3 ---
    16.times do
      play riff3[i], sustain: 1
      i = (i + 1) % 4
      sleep 0.25
    end
    
    # --- Volume Fade & Bass Stop ---
    in_thread do
      5.times do |n|
        control lvl, amp: 1 - (n * 0.2)
        sleep 1
      end
      set :playing, false
    end
    
    # --- Riff 4 ---
    16.times do
      play riff4[i], sustain: 1
      i = (i + 1) % 4
      sleep 0.25
    end
    
    control lvl, amp: 0
  end
  
  sample "C:/Users/mekhi_washington/Downloads/metalpipe.mp3", amp: 4
end
