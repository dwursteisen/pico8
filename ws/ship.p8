pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
function _init()


  stars1={}
  enemies={}
  
    
  ship = {}
  ship.x = 128 / 2
  ship.y = 128 - 16
  ship.index = 0

  t = 0
end


function _update60()
   t += 0.2


   ship.index = (t / 0.6) % 3   
   if btn(0) then
     ship.x = max(0, ship.x - 1)
   end
   
   if btn(1) then
     ship.x = min(ship.x + 1, 128)
   end
   
    ennemies()
   ★()
end

function update★(array)
   for ★ in all(array) do
      ★.y += ★.dy
  
     if ★.y > 128 + 5 then
        del(array, ★)
     end
    
   end
  
end

function ennemies()


   for 🐱 in all(ennemies) do
      🐱.t += 0.2
      🐱.x = 🐱.offset + sin(t)
      🐱.y = 🐱.y + 0.5
      if 🐱.y > 128 then
        del(ennmies, 🐱)
      end
   end
   if rnd() > 0.8 then
     local 🐱 = {}
     🐱.x = 0
     🐱.y = 0
     🐱.offset = 8
     add(ennemies, 🐱)
   
   end
end

function ★()


  update★(stars1)
  
  if rnd() > 0.8 then

     
     local ★ = {}
     ★.x = 8 + rnd() * 112
     ★.y = 0
     ★.dy = 1 + rnd() * 6 
     add(stars1, ★)
 
  end 
end


function _draw()

  local offset = 1
  local is_flip = false
  if btn(0) then
     offset = 17
  end
  
  if btn(1) then
     offset = 17
     is_flip = true
  end

 cls()
  
  
  for ★ in all(stars1) do
     line(★.x, ★.y, ★.x, ★.y - 4, 5)
     pset(★.x,★.y -5, 7)
  end  
  spr(offset + ship.index, ship.x, ship.y, 1, 1, is_flip)

  for 🐱 in all(ennemies) do
    line(🐱.x, 🐱.y, 🐱.x + 5, 🐱.y, 6)
  end
 
end

__gfx__
00000000000880000008800000088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000087c8000087c8000087c800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000ecce0000ecce0000ecce00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700000ecce0000ecce0000ecce00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000ee88ee00ee88ee00ee88ee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000e8aa8e00e8aa8e00e8aa8e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000800000088009900880099008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000099000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000880000008800000088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000e7c80000e7c80000e7c800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ecc80000ecc80000ecc800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ecc88000ecc88000ecc880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000eee88800eee88800eee8880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000eeaa8800eeaa8800eeaa880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000e0000800e0990800e099080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000e0000000e0000000e099000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
