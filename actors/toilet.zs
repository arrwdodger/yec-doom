class Toilet : Actor
{
    default
    {
        radius 16;
        height 32;
        +SOLID;
    }

    states
    {
        spawn:
            TTTT A -1;
            stop;
    }
}