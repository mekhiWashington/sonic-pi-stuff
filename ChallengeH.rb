=begin

Functions are great for when the pattern of notes (sleeps) and the actual notes are exactly the same.

Parameterized functions are great for when:
a. the pattern of notes is the same but the actual notes are different!
b. two chunks of code are almost identical but have a few slight differences!

YOUR TASK: Use a parameterized function to optimize the code below.

=end

use_bpm 120
use_synth :chiplead


define :twoNotes do |note1, note2|
  play note1
  play note2
  sleep 0.5
end

live_loop :theme do
  # MEASURE 1 ---------------------------
  twoNotes :a4, :a5
  twoNotes :a4, :a5
  twoNotes :c5, :c6
  twoNotes :a4, :a5
  twoNotes :d5, :d6
  twoNotes :a4, :a5
  twoNotes :e5, :e6
  twoNotes :d5, :d6
  
  # MEASURE 2 ---------------------------
  twoNotes :c5, :c6
  twoNotes :c5, :c6
  twoNotes :e5, :e6
  twoNotes :c5, :c6
  twoNotes :g5, :g6
  twoNotes :c4, :c5
  twoNotes :e5, :e6
  twoNotes :c4, :c5
  
  # MEASURE 3 ---------------------------
  twoNotes :g4, :g5
  twoNotes :g4, :g5
  twoNotes :b4, :b5
  twoNotes :c5, :c6
  twoNotes :g4, :g5
  twoNotes :d5, :d6
  twoNotes :c5, :c6
  
  # MEASURE 4 ---------------------------
  twoNotes :f4, :f5
  twoNotes :f4, :f5
  twoNotes :a4, :a5
  twoNotes :f4, :f5
  twoNotes :c5, :c6
  twoNotes :f4, :f5
  twoNotes :c5, :c6
  twoNotes :b4, :b5
end
