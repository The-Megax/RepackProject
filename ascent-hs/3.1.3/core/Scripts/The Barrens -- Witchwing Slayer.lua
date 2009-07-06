--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WitchwingSlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingSlayer_DemoralizingShout", 3000, 1)
end

function WitchwingSlayer_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function WitchwingSlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingSlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingSlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3278, 1, "WitchwingSlayer_OnCombat")
RegisterUnitEvent(3278, 2, "WitchwingSlayer_OnLeaveCombat")
RegisterUnitEvent(3278, 3, "WitchwingSlayer_OnKilledTarget")
RegisterUnitEvent(3278, 4, "WitchwingSlayer_OnDied")