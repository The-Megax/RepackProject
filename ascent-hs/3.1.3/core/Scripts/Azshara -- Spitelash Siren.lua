--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SpitelashSiren_OnCombat(Unit, Event)
Unit:RegisterEvent("SpitelashSiren_Shoot", 6000, 0)
Unit:RegisterEvent("SpitelashSiren_Renew", 10000, 0)
Unit:RegisterEvent("SpitelashSiren_FrostNova", 8000, 0)
Unit:RegisterEvent("SpitelashSiren_FrostShot", 9000, 0)
end

function SpitelashSiren_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SpitelashSiren_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function SpitelashSiren_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function SpitelashSiren_FrostShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12551, pUnit:GetMainTank()) 
end

function SpitelashSiren_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SpitelashSiren_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SpitelashSiren_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6195, 1, "SpitelashSiren_OnCombat")
RegisterUnitEvent(6195, 2, "SpitelashSiren_OnLeaveCombat")
RegisterUnitEvent(6195, 3, "SpitelashSiren_OnKilledTarget")
RegisterUnitEvent(6195, 4, "SpitelashSiren_OnDied")