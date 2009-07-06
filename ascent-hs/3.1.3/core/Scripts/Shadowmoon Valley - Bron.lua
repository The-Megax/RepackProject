--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bron_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Bron_ThrowHammer", 15000, 0)
end

function Bron_ThrowHammer(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33822,pUnit:GetClosestPlayer())
end

function Bron_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bron_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19395, 1, "Bron_OnEnterCombat")
RegisterUnitEvent(19395, 2, "Bron_OnLeaveCombat")
RegisterUnitEvent(19395, 4, "Bron_OnDied")