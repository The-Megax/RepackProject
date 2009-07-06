--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DCTalonite_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCTalonite_ColdTouch", 18000, 0)
	pUnit:RegisterEvent("DCTalonite_TalonOfJustice", 15000, 0)
end

function DCTalonite_ColdTouch(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39230,pUnit:GetClosestPlayer())
end


function DCTalonite_TalonOfJustice(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39229,pUnit:GetClosestPlayer())
end

function DCTalonite_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCTalonite_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19825, 1, "DCTalonite_OnEnterCombat")
RegisterUnitEvent(19825, 4, "DCTalonite_OnDied")
RegisterUnitEvent(19825, 2, "DCTalonite_OnLeaveCombat")