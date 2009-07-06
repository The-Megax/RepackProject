--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Grindgarr_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Grindgarr_Flames",5000,0)
    pUnit:RegisterEvent("Grindgarr_Stomp",4000,0)
end

function Grindgarr_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36487,pUnit:GetClosestPlayer())
end   
   
function Grindgarr_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end
    
function Grindgarr_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Grindgarr_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20803, 1, "Grindgarr_OnEnterCombat")
RegisterUnitEvent (20803, 2, "Grindgarr_OnLeaveCombat")
RegisterUnitEvent (20803, 4, "Grindgarr_OnDied")