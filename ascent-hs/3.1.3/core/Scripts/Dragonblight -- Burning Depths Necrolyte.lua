--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BurningDepthsNecrolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDepthsNecrolyte_DestructiveStrike", 6000, 0)
Unit:RegisterEvent("BurningDepthsNecrolyte_ObsidianEssence", 2000, 1)
end

function BurningDepthsNecrolyte_DestructiveStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51430, pUnit:GetMainTank()) 
end

function BurningDepthsNecrolyte_ObsidianEssence(pUnit, Event) 
pUnit:CastSpell(48616) 
end

function BurningDepthsNecrolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDepthsNecrolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDepthsNecrolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27356, 1, "BurningDepthsNecrolyte_OnCombat")
RegisterUnitEvent(27356, 2, "BurningDepthsNecrolyte_OnLeaveCombat")
RegisterUnitEvent(27356, 3, "BurningDepthsNecrolyte_OnKilledTarget")
RegisterUnitEvent(27356, 4, "BurningDepthsNecrolyte_OnDied")