# Welcome to Sonic Pi

use_synth :saw
use_bpm 168

#Total Sleep = 1
live_loop :one do
  play 60, amp: 0.5
  sleep 1
end

#Total Sleep = 4
live_loop :heartbeat do
  sample :bd_fat, amp: 2
  sleep 0.5
  sample :bd_fat , amp: 1
  sleep 3.5
end

sleep 8 #Wait 8 Beats

#Total Sleep = 8
live_loop :main_melody do
  use_synth :saw
  play :c4
  
  sleep 0.5
  play :e4
  sleep 0.5
  play :g4
  sleep 0.5
  play :b4
  sleep 0.5
  
  play :c5
  sleep 0.5
  play :b4
  sleep 0.5
  play :g4
  sleep 0.5
  play :e4
  sleep 0.5
end

sleep 4#Wait 4 Beats

#Total Sleep = 8
live_loop :sustained_note do
  use_synth :dark_ambience  # Choose a smooth synth
  play :c2, sustain: 8, release: 2  # Hold note for 8 beats, then fade out
  sleep 8  # Wait before restarting
end

sleep 4 #Wait 4 Beats

#Total Sleep = 8
live_loop :sustained_chord do
  use_synth :dark_ambience  # Choose a smooth synth
  play :c2, sustain: 8, release: 2
  play :e2, sustain: 8, release: 2
  play :gb2, sustain: 8, release: 2
  sleep 8  # Wait before restarting
end

sleep 8 #Wait 8 Beats

#Total Sleep = 8
live_loop :main_melody2 do
  use_synth :saw
  play :c2, amp: 0.5
  sleep 0.5
  play :e2, amp: 0.5
  sleep 0.5
  play :g2, amp: 0.5
  sleep 0.5
  play :b2, amp: 0.5
  sleep 0.5
  
  play :c3, amp: 0.5
  sleep 0.5
  play :b2, amp: 0.5
  sleep 0.5
  play :g2, amp: 0.5
  sleep 0.5
  play :e2, amp: 0.5
  sleep 0.5
end
