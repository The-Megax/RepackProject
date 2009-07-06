--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LightningSentry_OnCombat(Unit, Event)
Unit:RegisterEvent("LightningSentry_ChargedSentryTotem", 4000, 1)
end

function LightningSentry_ChargedSentryTotem(pUnit, Event) 
pUnit:CastSpell(52703) 
end

function LightningSentry_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LightningSentry_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LightningSentry_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26407, 1, "LightningSentry_OnCombat")
RegisterUnitEvent(26407, 2, "LightningSentry_OnLeaveCombat")
RegisterUnitEvent(26407, 3, "LightningSentry_OnKilledTarget")
RegisterUnitEvent(26407, 4, "LightningSentry_OnDied")