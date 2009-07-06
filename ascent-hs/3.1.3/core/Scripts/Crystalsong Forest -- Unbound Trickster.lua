--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function UnboundTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundTrickster_FireBlast", 6000, 0)
Unit:RegisterEvent("UnboundTrickster_Ignite", 8000, 0)
end

function UnboundTrickster_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13341, pUnit:GetMainTank()) 
end

function UnboundTrickster_Ignite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58438, pUnit:GetMainTank()) 
end

function UnboundTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30856, 1, "UnboundTrickster_OnCombat")
RegisterUnitEvent(30856, 2, "UnboundTrickster_OnLeaveCombat")
RegisterUnitEvent(30856, 3, "UnboundTrickster_OnKilledTarget")
RegisterUnitEvent(30856, 4, "UnboundTrickster_OnDied")