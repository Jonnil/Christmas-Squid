#region /*Type of ground. Dirt, Glass, Grass, Gravel, Metal, Stone, Wood, Default*/
type = "default";
#endregion /*Type of ground. Metal, Stone, Wood, Dirt, Gravel, Grass, Glass, Default END*/

look_outward = 17;

depth =- 100;

tile=44;
if(position_meeting(x,y-look_outward,obj_ground))
{
 tile=0;
 if(position_meeting(x+look_outward,y,obj_ground))
 {
  tile=4;
  if(position_meeting(x,y+look_outward,obj_ground))
  {
   tile=12;
   if(position_meeting(x-look_outward,y,obj_ground))
   {
    tile=28;
    if(position_meeting(x+look_outward,y-look_outward,obj_ground))
    {
     tile=29;
     if(position_meeting(x+look_outward,y+look_outward,obj_ground))
     {
      tile=33;
      if(position_meeting(x-look_outward,y+look_outward,obj_ground))
      {
       tile=39;
       if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=43;}
      }
      else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=40;}
     }
     else if(position_meeting(x-look_outward,y+look_outward,obj_ground))
     {
      tile=37;
      if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=41;}
     }
     else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=36;}
    }
    else if(position_meeting(x+look_outward,y+look_outward,obj_ground))
    {
     tile=30;
     if(position_meeting(x-look_outward,y+look_outward,obj_ground))
     {
      tile=34;
      if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=42;}
     }
     else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=38;}
    }
    else if(position_meeting(x-look_outward,y+look_outward,obj_ground))
    {
     tile=31;
     if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=35;}
    }
    else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=32;}
   }
   else if(position_meeting(x+look_outward,y-look_outward,obj_ground))
   {
    tile=16;
    if(position_meeting(x+look_outward,y+look_outward,obj_ground)){tile=18;}
   }
   else if(position_meeting(x+look_outward,y+look_outward,obj_ground)){tile=17;}
  }
  else if(position_meeting(x-look_outward,y,obj_ground))
  {
   tile=15;
   if(position_meeting(x+look_outward,y-look_outward,obj_ground))
   {
    tile=25;
    if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=27;}
   }
   else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=26;}
  }
  else if(position_meeting(x+look_outward,y-look_outward,obj_ground)){tile=8;}
 }
 else if(position_meeting(x,y+look_outward,obj_ground))
 {
  tile=45;
  if(position_meeting(x-look_outward,y,obj_ground))
  {
   tile=14;
   if(position_meeting(x-look_outward,y+look_outward,obj_ground))
   {
    tile=22;
    if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=24;}
   }
   else if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=23;}
  }
 }
 else if(position_meeting(x-look_outward,y,obj_ground))
 {
  tile=7;
  if(position_meeting(x-look_outward,y-look_outward,obj_ground)){tile=11;}
 }
}
else if(position_meeting(x+look_outward,y,obj_ground))
{
 tile=1;
 if(position_meeting(x,y+look_outward,obj_ground))
 {
  tile=5;
  if(position_meeting(x-look_outward,y,obj_ground))
  {
   tile=13;
   if(position_meeting(x+look_outward,y+look_outward,obj_ground))
   {
   tile=19;
    if(position_meeting(x-look_outward,y+look_outward,obj_ground)){tile=21;}
   }
   else if(position_meeting(x-look_outward,y+look_outward,obj_ground)){tile=20;}
  }
  else if(position_meeting(x+look_outward,y+look_outward,obj_ground)){tile=9;}
 }
 else if(position_meeting(x-look_outward,y,obj_ground))
 {
  tile=46;
 }
}
else if(position_meeting(x,y+look_outward,obj_ground))
{
 tile=2;
 if(position_meeting(x-look_outward,y,obj_ground))
 {
  tile=6;
  if(position_meeting(x-look_outward,y+look_outward,obj_ground)){tile=10;}
 }
}
else if(position_meeting(x-look_outward,y,obj_ground))
{
 tile=3;
}

image_speed=0;