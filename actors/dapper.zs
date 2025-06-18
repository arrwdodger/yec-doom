class Dapper : Actor
{
    default
    {
        radius 50;
        height 72;
        health 2000;
    }

    states
    {
        spawn:
            DDDD A -1;
            stop;
    }
}