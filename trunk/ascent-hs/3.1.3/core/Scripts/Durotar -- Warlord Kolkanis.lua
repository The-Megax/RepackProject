--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WarlordKolkanis_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordKolkanis_Pummel", 5000, 0)
Unit:RegisterEvent("WarlordKolkanis_Thunderclap", 7000, 0)
end

function WarlordKolkanis_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function WarlordKolkanis_Thunderclap(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8078, pUnit:GetMainTank()) 
end

function WarlordKolkanis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordKolkanis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordKolkanis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5808, 1, "WarlordKolkanis_OnCombat")
RegisterUnitEvent(5808, 2, "WarlordKolkanis_OnLeaveCombat")
RegisterUnitEvent(5808, 3, "WarlordKolkanis_OnKilledTarget")
RegisterUnitEvent(5808, 4, "WarlordKolkanis_OnDied")