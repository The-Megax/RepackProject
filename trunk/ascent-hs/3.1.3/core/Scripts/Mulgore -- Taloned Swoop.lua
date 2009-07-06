--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TalonedSwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("TalonedSwoop_Swoop", 6000, 0)
end

function TalonedSwoop_TalonedSwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function TalonedSwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalonedSwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalonedSwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2971, 1, "TalonedSwoop_OnCombat")
RegisterUnitEvent(2971, 2, "TalonedSwoop_OnLeaveCombat")
RegisterUnitEvent(2971, 3, "TalonedSwoop_OnKilledTarget")
RegisterUnitEvent(2971, 4, "TalonedSwoop_OnDied")