--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BaeldunRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("BaeldunRifleman_Shoot", 6000, 0)
end

function BaeldunRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BaeldunRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BaeldunRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BaeldunRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3377, 1, "BaeldunRifleman_OnCombat")
RegisterUnitEvent(3377, 2, "BaeldunRifleman_OnLeaveCombat")
RegisterUnitEvent(3377, 3, "BaeldunRifleman_OnKilledTarget")
RegisterUnitEvent(3377, 4, "BaeldunRifleman_OnDied")