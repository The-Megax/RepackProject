--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Apprentice_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Apprentice_Hammer",1500,0)
end

function Apprentice_Hammer(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37554,pUnit:GetClosestPlayer())
end

function Apprentice_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Apprentice_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20409, 1, "Apprentice_OnEnterCombat")
RegisterUnitEvent (20409, 2, "Apprentice_OnLeaveCombat")
RegisterUnitEvent (20409, 4, "Apprentice_OnDied")