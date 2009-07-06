--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InjuredWarsongMage_OnCombat(Unit, Event)
Unit:RegisterEvent("InjuredWarsongMage_ArcaneExplosion", 6000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Blizzard", 10000, 0)
Unit:RegisterEvent("InjuredWarsongMage_Pyroblast", 11000, 0)
end

function InjuredWarsongMage_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(34933) 
end

function InjuredWarsongMage_Blizzard(pUnit, Event) 
pUnit:CastSpell(46195) 
end

function InjuredWarsongMage_Pyroblast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17274, pUnit:GetMainTank()) 
end

function InjuredWarsongMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InjuredWarsongMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InjuredWarsongMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27107, 1, "InjuredWarsongMage_OnCombat")
RegisterUnitEvent(27107, 2, "InjuredWarsongMage_OnLeaveCombat")
RegisterUnitEvent(27107, 3, "InjuredWarsongMage_OnKilledTarget")
RegisterUnitEvent(27107, 4, "InjuredWarsongMage_OnDied")