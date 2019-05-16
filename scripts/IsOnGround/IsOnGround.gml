return place_meeting(x, y + 1, oWall) || 
		   place_meeting(x, y + 1, oBox) ||
		   place_meeting(x, y + 1, oWood) ||
		   place_meeting(x, y + 1, oWoodFire) ||
		   place_meeting(x, y + 1, oMetal);