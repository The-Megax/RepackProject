--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Doomguard_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomguard_Strike",1000,0)
    pUnit:RegisterEvent("Doomguard_Stomp",1000,0)
end

function Doomguard_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function Doomguard_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end

function Doomguard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19853, 1, "Doomguard_OnEnterCombat")
RegisterUnitEvent (19853, 2, "Doomguard_OnLeaveCombat")
RegisterUnitEvent (19853, 4, "Doomguard_OnDied")
