--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AshtongueShaman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AshtongueShaman_Bloodlust", 60000, 0)
	pUnit:RegisterEvent("AshtongueShaman_LightningShield", 60000, 0)
end

function AshtongueShaman_Bloodlust(pUnit,Event)
	pUnit:CastSpell(37067)
end

function AshtongueShaman_LightningShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function AshtongueShaman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AshtongueShaman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21453, 1, "AshtongueShaman_OnEnterCombat")
RegisterUnitEvent (21453, 2, "AshtongueShaman_OnLeaveCombat")
RegisterUnitEvent (21453, 4, "AshtongueShaman_OnDied")