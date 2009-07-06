--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BerserkOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("BerserkOwlbeast_Enrage", 1000, 1)
end

function BerserkOwlbeast_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function BerserkOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerserkOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerserkOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7454, 1, "BerserkOwlbeast_OnCombat")
RegisterUnitEvent(7454, 2, "BerserkOwlbeast_OnLeaveCombat")
RegisterUnitEvent(7454, 3, "BerserkOwlbeast_OnKilledTarget")
RegisterUnitEvent(7454, 4, "BerserkOwlbeast_OnDied")