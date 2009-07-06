--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OverseerGorthak_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerGorthak_Cleave", 8000, 0)
Unit:RegisterEvent("OverseerGorthak_ShieldBash", 6000, 0)
end

function OverseerGorthak_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function OverseerGorthak_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11972, pUnit:GetMainTank()) 
end

function OverseerGorthak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerGorthak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerGorthak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17304, 1, "OverseerGorthak_OnCombat")
RegisterUnitEvent(17304, 2, "OverseerGorthak_OnLeaveCombat")
RegisterUnitEvent(17304, 3, "OverseerGorthak_OnKilledTarget")
RegisterUnitEvent(17304, 4, "OverseerGorthak_OnDied")