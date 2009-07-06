--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FordragonMarksman_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonMarksman_Shoot", 5000, 0)
Unit:RegisterEvent("FordragonMarksman_ExplodingShot", 7000, 0)
Unit:RegisterEvent("FordragonMarksman_RapidShot", 9000, 0)
end

function FordragonMarksman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32103, pUnit:GetMainTank()) 
end

function FordragonMarksman_ExplodingShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7896, pUnit:GetMainTank()) 
end

function FordragonMarksman_RapidShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49474, pUnit:GetMainTank()) 
end

function FordragonMarksman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonMarksman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonMarksman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27540, 1, "FordragonMarksman_OnCombat")
RegisterUnitEvent(27540, 2, "FordragonMarksman_OnLeaveCombat")
RegisterUnitEvent(27540, 3, "FordragonMarksman_OnKilledTarget")
RegisterUnitEvent(27540, 4, "FordragonMarksman_OnDied")