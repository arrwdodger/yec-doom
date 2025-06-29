class Dapper : Actor
{
    default
    {
        radius 50;
        height 72;
        health 1000;

        // Flags

        +FRIENDLY
        +SOLID
        +SHOOTABLE
    }

    states
    {
        spawn:
            DDDD A 6;
            loop;
        death.crush:
            DDDD B -1;
            stop;
    }
}