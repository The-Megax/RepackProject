--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AxxarienHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienHellcaller_RainOfFire", 10000, 0)
end

function AxxarienHellcaller_RainOfFire(pUnit, Event) 
pUnit:CastSpell(11990) 
end

function AxxarienHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17342, 1, "AxxarienHellcaller_OnCombat")
RegisterUnitEvent(17342, 2, "AxxarienHellcaller_OnLeaveCombat")
RegisterUnitEvent(17342, 3, "AxxarienHellcaller_OnKilledTarget")
RegisterUnitEvent(17342, 4, "AxxarienHellcaller_OnDied")