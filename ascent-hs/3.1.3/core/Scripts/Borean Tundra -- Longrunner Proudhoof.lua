--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LongrunnerProudhoof_OnCombat(Unit, Event)
Unit:RegisterEvent("LongrunnerProudhoof_DemoralizingShout", 2000, 2)
Unit:RegisterEvent("LongrunnerProudhoof_ForcefulCleave", 8000, 0)
end

function LongrunnerProudhoof_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function LongrunnerProudhoof_ForcefulCleave(pUnit, Event) 
pUnit:CastSpell(35473) 
end

function LongrunnerProudhoof_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LongrunnerProudhoof_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LongrunnerProudhoof_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25335, 1, "LongrunnerProudhoof_OnCombat")
RegisterUnitEvent(25335, 2, "LongrunnerProudhoof_OnLeaveCombat")
RegisterUnitEvent(25335, 3, "LongrunnerProudhoof_OnKilledTarget")
RegisterUnitEvent(25335, 4, "LongrunnerProudhoof_OnDied")