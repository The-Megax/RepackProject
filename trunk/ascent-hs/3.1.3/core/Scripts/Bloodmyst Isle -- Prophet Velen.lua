--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ProphetVelen_OnCombat(Unit, Event)
Unit:RegisterEvent("ProphetVelen_HolyBlast", 15000, 0)
Unit:RegisterEvent("ProphetVelen_HolyNova", 18000, 0)
Unit:RegisterEvent("ProphetVelen_HolySmite", 13000, 0)
Unit:RegisterEvent("ProphetVelen_PrayerofHealing", 20000, 0)
Unit:RegisterEvent("ProphetVelen_StaffStrike", 12000, 0)
end

function ProphetVelen_HolyBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59700, pUnit:GetMainTank()) 
end

function ProphetVelen_HolyNova(pUnit, Event) 
pUnit:CastSpell(59701) 
end

function ProphetVelen_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59703, pUnit:GetRandomPlayer(0)) 
end

function ProphetVelen_PrayerofHealing(pUnit, Event) 
pUnit:CastSpell(59698) 
end

function ProphetVelen_StaffStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33592, pUnit:GetMainTank()) 
end

function ProphetVelen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ProphetVelen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ProphetVelen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17468, 1, "ProphetVelen_OnCombat")
RegisterUnitEvent(17468, 2, "ProphetVelen_OnLeaveCombat")
RegisterUnitEvent(17468, 3, "ProphetVelen_OnKilledTarget")
RegisterUnitEvent(17468, 4, "ProphetVelen_OnDied")