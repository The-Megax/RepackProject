--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Crusty_OnCombat(Unit, Event)
Unit:RegisterEvent("Crusty_Enrage", 10000, 1)
end

function Crusty_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Crusty_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Crusty_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Crusty_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18241, 1, "Crusty_OnCombat")
RegisterUnitEvent(18241, 2, "Crusty_OnLeaveCombat")
RegisterUnitEvent(18241, 3, "Crusty_OnKilledTarget")
RegisterUnitEvent(18241, 4, "Crusty_OnDied")