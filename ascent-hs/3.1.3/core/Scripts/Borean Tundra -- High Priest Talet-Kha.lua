--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighPriestTaletKha_OnCombat(Unit, Event)
Unit:RegisterEvent("HighPriestTaletKha_MindBlast", 6000, 0)
Unit:RegisterEvent("HighPriestTaletKha_Renew", 13000, 0)
end

function HighPriestTaletKha_MindBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15587, pUnit:GetMainTank()) 
end

function HighPriestTaletKha_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function HighPriestTaletKha_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighPriestTaletKha_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighPriestTaletKha_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26073, 1, "HighPriestTaletKha_OnCombat")
RegisterUnitEvent(26073, 2, "HighPriestTaletKha_OnLeaveCombat")
RegisterUnitEvent(26073, 3, "HighPriestTaletKha_OnKilledTarget")
RegisterUnitEvent(26073, 4, "HighPriestTaletKha_OnDied")