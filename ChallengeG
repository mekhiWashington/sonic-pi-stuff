# Stranger Things Main Theme
theme = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]


use_bpm 160
use_synth :saw

i = 0


live_loop :melody do
  8.times do
    with_fx :distortion do
      play theme[i]
      i += 1
      sleep 0.5
    end
  end
  i = 0
end
