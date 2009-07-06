--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SaltstoneGazer_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltstoneGazer_CrystalGaze", 12000, 0)
end

function SaltstoneGazer_CrystalGaze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3635, pUnit:GetMainTank()) 
end

function SaltstoneGazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltstoneGazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltstoneGazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4150, 1, "SaltstoneGazer_OnCombat")
RegisterUnitEvent(4150, 2, "SaltstoneGazer_OnLeaveCombat")
RegisterUnitEvent(4150, 3, "SaltstoneGazer_OnKilledTarget")
RegisterUnitEvent(4150, 4, "SaltstoneGazer_OnDied")