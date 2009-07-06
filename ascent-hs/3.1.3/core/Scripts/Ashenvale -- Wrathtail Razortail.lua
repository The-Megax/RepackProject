--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WrathtailRazortail_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailRazortail_PierceArmor", 10000, 0)
Unit:RegisterEvent("WrathtailRazortail_Thorns", 2000, 2)
end

function WrathtailRazortail_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function WrathtailRazortail_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function WrathtailRazortail_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailRazortail_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailRazortail_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3712, 1, "WrathtailRazortail_OnCombat")
RegisterUnitEvent(3712, 2, "WrathtailRazortail_OnLeaveCombat")
RegisterUnitEvent(3712, 3, "WrathtailRazortail_OnKilledTarget")
RegisterUnitEvent(3712, 4, "WrathtailRazortail_OnDied")