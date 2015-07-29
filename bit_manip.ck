Step i => dac;

// Initializations
0 => int t;
0 => int s;
0.0 => float f;
(-1 >> 1) => int largest;
(-1 >> 1) $ float => float largest_f;

// Tweak these parameters as you see fit
0 => int time; // Default 0
0 => int shift; // Default 0
-1 => int timeflow; // Default 1
4 => int offset; // ???
1::samp => dur d; // Default 1::samp

// This function defines the transformation of the bits
fun int transform( int t )
{
    return (
    // Modify the next line to make crazy sounds
       t * ((3 * (t >> 33 ^ t)) << 20)
    );
}

while(true)
{
    time << shift => t;
    transform(t) => s;
    s $ float => f;
    f / largest_f => f;
    //<<<s>>>;
    //<<<f>>>;
    //<<<"">>>;
    f => i.next;
    timeflow +=> time;
    d => now;
}



// Fractal build-up that never drops
// try 4 and 6 for offset
// shift = 23
// timeflow = 1
//t * ((t >> (9 + offset) | t >> (13 + offset)) & t >> (7 + offset))

// Engine starting while annoying background sound builds
// shift = 23
// timeflow = -1
// t * ((3 * (t >> 33 ^ t)) << 20)
//(t | t >> 97) & t * ((3 * (t >> 33 ^ t)) << 20)

// Very bizarre staticky beat that occasionally blips with very satisfying sounds
// shift = 0
// timeflow = -1
// (t | t >> 97123) & t * ((3 * (t >> 3333 ^ t)) << 666) | (t ^ (t * (largest - 7 * t)))
// t * ((3 * (t >> 3333 ^ t)) << 666)
