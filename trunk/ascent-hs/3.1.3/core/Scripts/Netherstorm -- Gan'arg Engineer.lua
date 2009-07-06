--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Engineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Engineer_Dynamite",1000,0)
end

function Engineer_Dynamite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(7978,pUnit:GetClosestPlayer())
end

function Engineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Engineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16948, 1, "Engineer_OnEnterCombat")
RegisterUnitEvent (16948, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent (16948, 4, "Engineer_OnDied")