--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrostpawTrapper_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawTrapper_AimedShot", 9000, 0)
Unit:RegisterEvent("FrostpawTrapper_Shoot", 6000, 0)
Unit:RegisterEvent("FrostpawTrapper_WingClip", 12000, 0)
end

function FrostpawTrapper_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30614, pUnit:GetMainTank()) 
end

function FrostpawTrapper_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function FrostpawTrapper_WingClip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32908, pUnit:GetMainTank()) 
end

function FrostpawTrapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawTrapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawTrapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26434, 1, "FrostpawTrapper_OnCombat")
RegisterUnitEvent(26434, 2, "FrostpawTrapper_OnLeaveCombat")
RegisterUnitEvent(26434, 3, "FrostpawTrapper_OnKilledTarget")
RegisterUnitEvent(26434, 4, "FrostpawTrapper_OnDied")