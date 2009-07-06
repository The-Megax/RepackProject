--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AltarOfShatar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AltarOfShatar_Net", 20000, 0)
end

function AltarofShatar_Net(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12024,pUnit:GetClosestPlayer())
end

function AltarofShatar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AltarofShatar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21986, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (21986, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (21986, 4, "Alandien_OnDied")