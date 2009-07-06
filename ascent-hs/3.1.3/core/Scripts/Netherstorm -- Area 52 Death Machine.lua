--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Machine_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Machine_Rocket",2000,0)
end

function Machine_Rocket(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38083, pUnit:GetClosestPlayer())
end

function Machine_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Machine_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21976, 1, "Machine_OnEnterCombat")
RegisterUnitEvent (21976, 2, "Machine_OnLeaveCombat")
RegisterUnitEvent (21976, 4, "Machine_OnDied")
