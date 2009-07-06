--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InjuredWarsongWarrior_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongWarrior_Cleave", 6000, 0)
Unit:RegisterEvent("InjuredWarsongWarrior_HeroicStrike", 7000, 0)
end

function InjuredWarsongWarrior_Cleave(pUnit, Event) 
pUnit:CastSpell(39047) 
end

function InjuredWarsongWarrior_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45026, pUnit:GetMainTank()) 
end

function InjuredWarsongWarrior_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongWarrior_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongWarrior_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27106, 1, "InjuredWarsongWarrior_OnCombat")
RegisterUnitEvent(27106, 2, "InjuredWarsongWarrior_OnLeaveCombat")
RegisterUnitEvent(27106, 3, "InjuredWarsongWarrior_OnKilledTarget")
RegisterUnitEvent(27106, 4, "InjuredWarsongWarrior_OnDied")