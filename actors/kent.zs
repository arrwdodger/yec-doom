class Kent : Actor
{
    default
    {
        // Flags

        +SOLID;

        // Properties

        radius 16;
        height 72;
    }
    
    states
    {
        spawn:
            KENT ABCDCB 10;
            loop;
    }
}