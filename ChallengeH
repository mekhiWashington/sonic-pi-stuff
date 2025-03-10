use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

notes = [:e3, :e3, :g3, :e3, :r, :d3, :c3, :b2]
sleeps = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]

a = 0
b = 0

live_loop :white_stripes do
  8.times do
    play notes[a] unless a == :r
    sleep sleeps[b]
    a += 1
    b += 1
  end
  a = 0
  b = 0
end

sleep 8

live_loop :drum do
  sample :drum_heavy_kick
  sleep 1
end

