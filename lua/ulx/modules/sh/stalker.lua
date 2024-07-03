if SERVER then
    util.AddNetworkString("ulx.stalker")
end


function ulx.stalker( calling_ply )

	net.Start("ulx.stalker")
    net.Broadcast()
	
end

local stalker = ulx.command( "Fun", "ulx stalker", ulx.stalker, "!stalker" )
stalker:defaultAccess( ULib.ACCESS_ADMIN )
stalker:help( "иди своей дорогой" )