--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Kaganishu_OnCombat(Unit, Event)
Unit:RegisterEvent("Kaganishu_BlastWave", 9000, 0)
Unit:RegisterEvent("Kaganishu_FireNovaTotem", 2000, 1)
Unit:RegisterEvent("Kaganishu_Fireball", 7000, 0)
end

function Kaganishu_BlastWave(pUnit, Event) 
pUnit:CastSpell(15744) 
end

function Kaganishu_FireNovaTotem(pUnit, Event) 
pUnit:CastSpell(44257) 
end

function Kaganishu_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function Kaganishu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kaganishu_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kaganishu_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25427, 1, "Kaganishu_OnCombat")
RegisterUnitEvent(25427, 2, "Kaganishu_OnLeaveCombat")
RegisterUnitEvent(25427, 3, "Kaganishu_OnKilledTarget")
RegisterUnitEvent(25427, 4, "Kaganishu_OnDied")