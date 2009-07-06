--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function PrinceRaze_OnCombat(Unit, Event)
Unit:RegisterEvent("PrinceRaze_GiftoftheXavian", 15000, 1)
Unit:RegisterEvent("PrinceRaze_Fireball", 8000, 0)
Unit:RegisterEvent("PrinceRaze_FireNova", 6000, 0)
Unit:RegisterEvent("PrinceRaze_ChargedArcaneBolt", 1000, 1)
end

function PrinceRaze_GiftoftheXavian(pUnit, Event) 
pUnit:CastSpell(6925) 
end

function PrinceRaze_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function PrinceRaze_FireNova(pUnit, Event) 
pUnit:CastSpell(11969) 
end

function PrinceRaze_ChargedArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16570, pUnit:GetMainTank()) 
end

function PrinceRaze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PrinceRaze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PrinceRaze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10647, 1, "PrinceRaze_OnCombat")
RegisterUnitEvent(10647, 2, "PrinceRaze_OnLeaveCombat")
RegisterUnitEvent(10647, 3, "PrinceRaze_OnKilledTarget")
RegisterUnitEvent(10647, 4, "PrinceRaze_OnDied")