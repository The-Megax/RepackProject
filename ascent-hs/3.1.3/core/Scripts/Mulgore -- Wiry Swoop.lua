--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WirySwoop_OnCombat(Unit, Event)
Unit:RegisterEvent("WirySwoop_Swoop", 6000, 0)
end

function WirySwoop_WirySwoop(pUnit, Event) 
pUnit:CastSpell(5708) 
end

function WirySwoop_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WirySwoop_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WirySwoop_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2969, 1, "WirySwoop_OnCombat")
RegisterUnitEvent(2969, 2, "WirySwoop_OnLeaveCombat")
RegisterUnitEvent(2969, 3, "WirySwoop_OnKilledTarget")
RegisterUnitEvent(2969, 4, "WirySwoop_OnDied")