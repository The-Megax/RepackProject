--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaptainEmmyMalin_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainEmmyMalin_FrostNova", 10000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_Frostbolt", 8000, 0)
Unit:RegisterEvent("CaptainEmmyMalin_IceLance", 3000, 0)
end

function CaptainEmmyMalin_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function CaptainEmmyMalin_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_IceLance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49906, pUnit:GetMainTank()) 
end

function CaptainEmmyMalin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainEmmyMalin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainEmmyMalin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26762, 1, "CaptainEmmyMalin_OnCombat")
RegisterUnitEvent(26762, 2, "CaptainEmmyMalin_OnLeaveCombat")
RegisterUnitEvent(26762, 3, "CaptainEmmyMalin_OnKilledTarget")
RegisterUnitEvent(26762, 4, "CaptainEmmyMalin_OnDied")