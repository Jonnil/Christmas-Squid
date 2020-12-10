image_index=44;
if(position_meeting(x,y-look_outward,same_object))
{
 image_index=0;
 if(position_meeting(x+look_outward,y,same_object))
 {
  image_index=4;
  if(position_meeting(x,y+look_outward,same_object))
  {
   image_index=12;
   if(position_meeting(x-look_outward,y,same_object))
   {
    image_index=28;
    if(position_meeting(x+look_outward,y-look_outward,same_object))
    {
     image_index=29;
     if(position_meeting(x+look_outward,y+look_outward,same_object))
     {
      image_index=33;
      if(position_meeting(x-look_outward,y+look_outward,same_object))
      {
       image_index=39;
       if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=43;}
      }
      else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=40;}
     }
     else if(position_meeting(x-look_outward,y+look_outward,same_object))
     {
      image_index=37;
      if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=41;}
     }
     else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=36;}
    }
    else if(position_meeting(x+look_outward,y+look_outward,same_object))
    {
     image_index=30;
     if(position_meeting(x-look_outward,y+look_outward,same_object))
     {
      image_index=34;
      if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=42;}
     }
     else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=38;}
    }
    else if(position_meeting(x-look_outward,y+look_outward,same_object))
    {
     image_index=31;
     if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=35;}
    }
    else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=32;}
   }
   else if(position_meeting(x+look_outward,y-look_outward,same_object))
   {
    image_index=16;
    if(position_meeting(x+look_outward,y+look_outward,same_object)){image_index=18;}
   }
   else if(position_meeting(x+look_outward,y+look_outward,same_object)){image_index=17;}
  }
  else if(position_meeting(x-look_outward,y,same_object))
  {
   image_index=15;
   if(position_meeting(x+look_outward,y-look_outward,same_object))
   {
    image_index=25;
    if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=27;}
   }
   else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=26;}
  }
  else if(position_meeting(x+look_outward,y-look_outward,same_object)){image_index=8;}
 }
 else if(position_meeting(x,y+look_outward,same_object))
 {
  image_index=45;
  if(position_meeting(x-look_outward,y,same_object))
  {
   image_index=14;
   if(position_meeting(x-look_outward,y+look_outward,same_object))
   {
    image_index=22;
    if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=24;}
   }
   else if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=23;}
  }
 }
 else if(position_meeting(x-look_outward,y,same_object))
 {
  image_index=7;
  if(position_meeting(x-look_outward,y-look_outward,same_object)){image_index=11;}
 }
}
else if(position_meeting(x+look_outward,y,same_object))
{
 image_index=1;
 if(position_meeting(x,y+look_outward,same_object))
 {
  image_index=5;
  if(position_meeting(x-look_outward,y,same_object))
  {
   image_index=13;
   if(position_meeting(x+look_outward,y+look_outward,same_object))
   {
   image_index=19;
    if(position_meeting(x-look_outward,y+look_outward,same_object)){image_index=21;}
   }
   else if(position_meeting(x-look_outward,y+look_outward,same_object)){image_index=20;}
  }
  else if(position_meeting(x+look_outward,y+look_outward,same_object)){image_index=9;}
 }
 else if(position_meeting(x-look_outward,y,same_object))
 {
  image_index=46;
 }
}
else if(position_meeting(x,y+look_outward,same_object))
{
 image_index=2;
 if(position_meeting(x-look_outward,y,same_object))
 {
  image_index=6;
  if(position_meeting(x-look_outward,y+look_outward,same_object)){image_index=10;}
 }
}
else if(position_meeting(x-look_outward,y,same_object))
{
 image_index=3;
}