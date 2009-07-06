--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Banthar_Spell(Unit, event, miscunit, misc)
    Unit:FullCastSpellOnTarget(32023,Unit:GetMainTank())
end

function Banthar(Unit, event, miscunit, misc)
    Unit:RegisterEvent("Banthar_Spell", 20000, 0)
end

function Banthar_Death(Unit)
    Unit:RemoveEvents()
end

function Banthar_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(18259, 1, "Banthar")
RegisterUnitEvent(18259, 2, "Banthar_OnLeaveCombat")
RegisterUnitEvent(18259, 3, "Banthar_Death")