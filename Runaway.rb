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
