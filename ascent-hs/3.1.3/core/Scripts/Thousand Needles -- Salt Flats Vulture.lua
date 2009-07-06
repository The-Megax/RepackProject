--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SaltFlatsVulture_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsVulture_Execute", 6000, 0)
end

function SaltFlatsVulture_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsVulture_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsVulture_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsVulture_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4158, 1, "SaltFlatsVulture_OnCombat")
RegisterUnitEvent(4158, 2, "SaltFlatsVulture_OnLeaveCombat")
RegisterUnitEvent(4158, 3, "SaltFlatsVulture_OnKilledTarget")
RegisterUnitEvent(4158, 4, "SaltFlatsVulture_OnDied")