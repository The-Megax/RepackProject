--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AllianceHalaaniGuard_Shoot(Unit, event, miscunit, misc)
    print "AllianceHalaaniGuard Shoot"
	Unit:FullCastSpellOnTarget(23337,Unit:GetMainTank())
end

function AllianceHalaaniGuard(Unit, event, miscunit, misc)
    print "AllianceHalaaniGuard"
	Unit:RegisterEvent("AllianceHalaaniGuard_Shoot",0,0)
end

function AllianceHalaaniGuard_Death(Unit)
    Unit:RemoveEvents()
end

function AllianceHalaaniGuard_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(18256, 1, "AllianceHalaaniGuard")
RegisterUnitEvent(18256, 2, "AllianceHalaaniGuard_OnLeaveCombat")
RegisterUnitEvent(18256, 4, "AllianceHalaaniGuard_Death")