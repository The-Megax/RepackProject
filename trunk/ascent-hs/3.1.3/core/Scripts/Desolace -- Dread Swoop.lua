--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DreadSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadSwoop_Swoop", 8000, 0)
end

function DreadSwoop_Swoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function DreadSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4692, 1, "DreadSwoop_OnCombat")
RegisterUnitEvent(4692, 2, "DreadSwoop_OnLeaveCombat")
RegisterUnitEvent(4692, 3, "DreadSwoop_OnKilledTarget")
RegisterUnitEvent(4692, 4, "DreadSwoop_OnDied")