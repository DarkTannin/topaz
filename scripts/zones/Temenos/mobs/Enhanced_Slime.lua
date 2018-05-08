-----------------------------------
-- Area: Temenos W T
--  NPC: Enhanced_Slime

-----------------------------------
package.loaded["scripts/zones/Temenos/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/limbus");
require("scripts/zones/Temenos/TextIDs");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)

end;

function onMobDeath(mob, player, isKiller)
local cofferID=Randomcoffer(5,Temenos_Western_Tower);
    local mobX = mob:getXPos();
    local mobY = mob:getYPos();
    local mobZ = mob:getZPos();
    GetNPCByID(16929239):setStatus(dsp.status.NORMAL);
  if (cofferID~=0) then
       GetNPCByID(16928768+cofferID):setPos(mobX,mobY,mobZ);
    GetNPCByID(16928768+cofferID):setStatus(dsp.status.NORMAL);
  end
end;
