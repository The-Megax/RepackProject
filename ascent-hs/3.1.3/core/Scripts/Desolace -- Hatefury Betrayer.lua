--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryBetrayer_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryBetrayer_Enrage", 10000, 1)
end

function HatefuryBetrayer_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryBetrayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryBetrayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryBetrayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4673, 1, "HatefuryBetrayer_OnCombat")
RegisterUnitEvent(4673, 2, "HatefuryBetrayer_OnLeaveCombat")
RegisterUnitEvent(4673, 3, "HatefuryBetrayer_OnKilledTarget")
RegisterUnitEvent(4673, 4, "HatefuryBetrayer_OnDied")