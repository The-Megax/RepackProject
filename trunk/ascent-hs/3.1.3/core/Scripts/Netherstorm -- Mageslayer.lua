--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Mageslayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mageslayer_Reflection",8000,0)
end

function Mageslayer_Reflection(pUnit,Event)
    pUnit:CastSpell(36096)
end

function Mageslayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mageslayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18866, 1, "Mageslayer_OnEnterCombat")
RegisterUnitEvent (18866, 2, "Mageslayer_OnLeaveCombat")
RegisterUnitEvent (18866, 4, "Mageslayer_OnDied")