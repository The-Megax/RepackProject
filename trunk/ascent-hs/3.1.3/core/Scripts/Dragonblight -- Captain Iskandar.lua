--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaptainIskandar_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainIskandar_Cleave", 6000, 0)
Unit:RegisterEvent("CaptainIskandar_MortalStrike", 8000, 0)
Unit:RegisterEvent("CaptainIskandar_Whirlwind", 7000, 0)
end

function CaptainIskandar_Cleave(pUnit, Event) 
pUnit:CastSpell(42724) 
end

function CaptainIskandar_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15708, pUnit:GetMainTank()) 
end

function CaptainIskandar_Whirlwind(pUnit, Event) 
pUnit:CastSpell(38619) 
end

function CaptainIskandar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainIskandar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainIskandar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27657, 1, "CaptainIskandar_OnCombat")
RegisterUnitEvent(27657, 2, "CaptainIskandar_OnLeaveCombat")
RegisterUnitEvent(27657, 3, "CaptainIskandar_OnKilledTarget")
RegisterUnitEvent(27657, 4, "CaptainIskandar_OnDied")