--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FelmuskFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskFelsworn_OverwhelmingStench", 10000, 0)
end

function FelmuskFelsworn_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3762, 1, "FelmuskFelsworn_OnCombat")
RegisterUnitEvent(3762, 2, "FelmuskFelsworn_OnLeaveCombat")
RegisterUnitEvent(3762, 3, "FelmuskFelsworn_OnKilledTarget")
RegisterUnitEvent(3762, 4, "FelmuskFelsworn_OnDied")