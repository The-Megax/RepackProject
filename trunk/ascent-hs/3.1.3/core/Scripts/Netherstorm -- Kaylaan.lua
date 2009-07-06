--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Kaylaan_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Kaylaan_Ressurection",4000,0)
end

function Kaylaan_Ressurection(pUnit,Event)
    pUnit:CastSpell(35746)
end

function Kaylaan_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Kaylaan_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20780, 1, "Kaylaan_OnEnterCombat")
RegisterUnitEvent (20780, 2, "Kaylaan_OnLeaveCombat")
RegisterUnitEvent (20780, 4, "Kaylaan_OnDied")