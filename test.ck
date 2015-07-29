adc => dac;

KBHit kb;

while(true)
{
    kb => now;
    
    while(kb.more())
    {
       <<< "ascii: ", kb.getchar() >>>; 
    }
}
