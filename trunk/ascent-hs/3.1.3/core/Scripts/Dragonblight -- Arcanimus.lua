--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Arcanimus_OnCombat(Unit, Event)
Unit:RegisterEvent("Arcanimus_ArcaneExplosion", 6000, 0)
end

function Arcanimus_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51820) 
end

function Arcanimus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arcanimus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arcanimus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26370, 1, "Arcanimus_OnCombat")
RegisterUnitEvent(26370, 2, "Arcanimus_OnLeaveCombat")
RegisterUnitEvent(26370, 3, "Arcanimus_OnKilledTarget")
RegisterUnitEvent(26370, 4, "Arcanimus_OnDied")