//The camera has near Z clipping issues when it's very close to portal lines, but otherwise traverses them fine. I can't do anything about that without
//adding it to GZDoom natively to get rid of the clipping (And some other problems).
Class ParallaxingSkyViewpoint : SkyViewpoint
{
	Default
	{
		//$Title Parallaxing Skybox
		//$Category Cameras And Interpolation
		//$Sprite PSKYA0
		//$Arg1 Sky Parallax
		//$Arg1Tooltip "How much the camera moves relative to the player, the lower the value the less the relative movement."
		//$Arg1Default 64
	}
	Vector3 StartPos;
	Override Void PostBeginPlay()
	{
		Super.PostBeginPlay();
		
		StartPos = Pos; // Store the starting position
	}

	Override Void Tick()
	{
		Super.Tick();
		
		PlayerInfo Plr = players[consoleplayer];
		If (!Plr.Camera) Return;
		Vector3 CameraPos = Plr.Camera.Pos;
		//Looking through a player, use their ViewZ (Accounts for bob and all that). Looking through non-player, use their Z position + camera height.
		Double ViewHeight = Plr.Camera.Player ? Plr.ViewZ : Plr.Camera.Pos.Z + Plr.Camera.GetCameraHeight();
		
		Vector3 OldPos = Pos;
		SetXYZ (StartPos);
		Vector3 NewPos = Vec3Offset (CameraPos.X/Args[1],CameraPos.Y/Args[1],ViewHeight/Args[1]+0.2);
		SetXYZ (OldPos);
		SetOrigin(NewPos,True);
	}
}
