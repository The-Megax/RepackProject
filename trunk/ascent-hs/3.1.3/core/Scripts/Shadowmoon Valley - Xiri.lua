--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Xiri_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Xiri_BlindingLight", 24000, 0)
end

function Xiri_OnSpawn(pUnit,Event)
	pUnit:RegisterEvent("Xiri_LightOfTheNaaru1", 20000, 0)
	pUnit:RegisterEvent("Xiri_LightOfTheNaaru2", 20000, 0)
	pUnit:RegisterEvent("Xiri_LightOfTheNaaru3", 20000, 0)
end

function Xiri_BlindingLight(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33805)
end

function Xiri_LightOfTheNaaru1(pUnit,Event)
	pUnit:CastSpell(39828)
end

function Xiri_LightOfTheNaaru2(pUnit,Event)
	pUnit:CastSpell(39831)
end

function Xiri_LightOfTheNaaru3(pUnit,Event)
	pUnit:CastSpell(39832)
end

function Xiri_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(18528, 1, "Xiri_OnEnterCombat")
RegisterUnitEvent(18528, 1, "Xiri_OnLeaveCombat")
RegisterUnitEvent(18528, 4, "Xiri_OnDied")
RegisterUnitEvent(18528, 6, "Xiri_OnSpawn")