--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Boulderfistcrusher_Pulverize(Unit, event, miscunit, misc)
	Unit:FullCastSpellOnTarget(2676,Unit:GetMainTank())
end

function Boulderfistcrusher(Unit, event, miscunit, misc)
    Unit:RegisterEvent("Boulderfistcrusher_Pulverize",12000,0)
end

function Boulderfistcrusher_Death(Unit)
    Unit:RemoveEvents()
end

function Boulderfistcrusher_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(17134, 1, "Boulderfistcrusher")
RegisterUnitEvent(17134, 2, "Boulderfistcrusher_OnLeaveCombat")
RegisterUnitEvent(17134, 3, "Boulderfistcrusher_Death")