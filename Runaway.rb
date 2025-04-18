use_synth :piano
use_bpm 80
#=begin

amp = 1
playing = true

with_fx :reverb do
  with_fx :level, amp: amp do |lvl|
    riff1 = [:ab3, :e3, :ab3, :b3]
    riff2 = [:ab3, :eb3, :ab3, :b3]
    riff3 = [:e3, :db3, :e3, :ab3]
    riff4 = [:a3, :e3, :db3, :e3]
    
    
    
    AdLib = "C:/Users/mekhi_washington/Downloads/LOOKATYA.wav"
    
    define :intro do |note|
      3.times do
        play note, sustain: 2
        sleep 2
      end
      play note - 12, sustain: 2  # Play the note an octave lower
      sleep 2
    end
    
    define :octaveNotes do |note|
      3.times do
        play note, sustain: 2
        sleep 1
        play note - 24, sustain: 2
        sleep 1
      end
      play note - 12, sustain: 2  # Play the note an octave lower
    end
    
    # Example usage:
    intro :e6
    intro :eb6
    intro :db6
    3.times do
      play :a5, sustain: 2
      sleep 2
    end
    play :ab5, sustain: 2
    
    sample AdLib, amp: 0.75
    
    sleep 0.5
    play :e6
    #=end
    
    
    define :left do |note|
      play note, sustain: 1
      sleep 1
      play note - 24, sustain: 1
    end
    
    
    sleep 0.5
    
    i = 0
    
    live_loop :bass do
      if playing
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
    
    sleep 0.5
    
    16.times do
      play riff1[i], sustain: 1
      i += 1
      sleep 0.25
      if i == 4
        i = 0
      end
    end
    
    16.times do
      play riff2[i], sustain: 1
      i += 1
      sleep 0.25
      if i == 4
        i = 0
      end
    end
    
    16.times do
      play riff3[i], sustain: 1
      i += 1
      sleep 0.25
      if i == 4
        i = 0
      end
    end
    
    
    in_thread do
      5.times do |i|
        control lvl, amp: 1 - (i * 0.2)  # gradually reduce volume
        sleep 1  # time between volume steps
      end
      stop  # stop the fade loop once done
    end
    
     16.times do
      play riff4[i], sustain: 1
      i += 1
      sleep 0.25
      if i == 4
        i = 0
      end
    end
    stop
    control lvl, amp: 0
    print(lvl)
  end
end
