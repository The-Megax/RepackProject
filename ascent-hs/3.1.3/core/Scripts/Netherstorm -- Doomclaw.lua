--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Doomclaw_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomclaw_Swipe",1000,0)
    pUnit:RegisterEvent("Doomclaw_Claw",1100,0)
    pUnit:RegisterEvent("Doomclaw_Slime",1000,0)
end

function Doomclaw_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36205,pUnit:GetClosestPlayer())
end

function Doomclaw_Claw(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36996,pUnit:GetClosestPlayer())
end

function Doomclaw_Slime(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Doomclaw_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomclaw_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19738, 1, "Doomclaw_OnEnterCombat")
RegisterUnitEvent (19738, 2, "Doomclaw_OnLeaveCombat")
RegisterUnitEvent (19738, 4, "Doomclaw_OnDied")