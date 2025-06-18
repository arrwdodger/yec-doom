class DapperDoorL : Actor
{
	default
	{
		radius 2;
		-SOLID;
	}

    states
    {
        spawn:
            DDLL A -1;
            stop;
    }
}

class DapperDoorR : Actor
{
	default
	{
		radius 2;
		-SOLID;
	}
    
    states
    {
        spawn:
            DDRR A -1;
            stop;
    }
}