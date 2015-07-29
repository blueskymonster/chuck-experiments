Step s => Gain g => Clip c => blackhole;

0.75 => g.gain;
0 => int i;
while (i < 3)
{
  i => s.next;
  1::samp => now;
  <<<c.last()>>>;
  i++;
}
