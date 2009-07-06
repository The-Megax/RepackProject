--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightKeeperHavunth_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightKeeperHavunth_FireBlast", 6000, 0)
Unit:RegisterEvent("TwilightKeeperHavunth_FireNova", 8000, 0)
end

function TwilightKeeperHavunth_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function TwilightKeeperHavunth_FireNova(pUnit, Event) 
pUnit:CastSpell(17366) 
end

function TwilightKeeperHavunth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightKeeperHavunth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightKeeperHavunth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11804, 1, "TwilightKeeperHavunth_OnCombat")
RegisterUnitEvent(11804, 2, "TwilightKeeperHavunth_OnLeaveCombat")
RegisterUnitEvent(11804, 3, "TwilightKeeperHavunth_OnKilledTarget")
RegisterUnitEvent(11804, 4, "TwilightKeeperHavunth_OnDied")