--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IronThaneArgrum_OnCombat(Unit, Event)
Unit:RegisterEvent("IronThaneArgrum_CallLightning", 6000, 0)
Unit:RegisterEvent("IronThaneArgrum_LightningShield", 4000, 0)
end

function IronThaneArgrum_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function IronThaneArgrum_LightningShield(pUnit, Event) 
pUnit:CastSpell(52651) 
end

function IronThaneArgrum_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IronThaneArgrum_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IronThaneArgrum_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26348, 1, "IronThaneArgrum_OnCombat")
RegisterUnitEvent(26348, 2, "IronThaneArgrum_OnLeaveCombat")
RegisterUnitEvent(26348, 3, "IronThaneArgrum_OnKilledTarget")
RegisterUnitEvent(26348, 4, "IronThaneArgrum_OnDied")