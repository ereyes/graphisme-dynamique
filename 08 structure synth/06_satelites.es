// E. Reyes, 2009

// An extended spiral

// this code renders 6 boxes floating around a solid box
// try zooming in and out

satelites

rule satelites {
	{s 0.1 x 0.9 rx 0.3 h 30 b 1 sat 1 } satelites
	{  x 20  } box
	{  y 20  } box
	{  z 20  } box
	{  x -20  } box
	{  y -20  } box
	{  z -20  } box
	{x -0.9 ry -0.3} satelites2
}

rule satelites2 {
	{x 0.9 } grid
}