--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BerylTreasureHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylTreasureHunter_FocusBeam", 8000, 0)
end

function BerylTreasureHunter_FocusBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50658, pUnit:GetMainTank()) 
end

function BerylTreasureHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylTreasureHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylTreasureHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25353, 1, "BerylTreasureHunter_OnCombat")
RegisterUnitEvent(25353, 2, "BerylTreasureHunter_OnLeaveCombat")
RegisterUnitEvent(25353, 3, "BerylTreasureHunter_OnKilledTarget")
RegisterUnitEvent(25353, 4, "BerylTreasureHunter_OnDied")