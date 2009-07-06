function WitherbarkWitchDoctor_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("HealingWard",1000,1)
	Unit:RegisterEvent("MagmaTotem",8000,0)
end

function HealingWard(Unit,Event)
 if Unit:GetHealthPct() <= 29 then
	Unit:CastSpell(5605)
end
end

function MagmaTotem(Unit,Event)
local X,Y,Z = Unit:GetX(),Unit:GetY(),Unit:GetZ()
local Totem = Unit:GetCreatureNearestCoords(X,Y,Z,8190)
 if (Totem ~= nil) then
	Unit:CastSpell(8190)
	else
	return
end
end

function WitherbarkWitchDoctor_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkWitchDoctor_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2555,1,"WitherbarkWitchDoctor_OnEnterCombat")
RegisterUnitEvent(2555,2,"WitherbarkWitchDoctor_OnLeaveCombat")
RegisterUnitEvent(2555,4,"WitherbarkWitchDoctor_OnDied")

function ZalasWitherbark_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("ShadowboltVolley", 3000, 0)
end

function ShadowboltVolley(Unit,Event)
local plr = Unit:GetClosestPlayer()
	if (plr ~= nil) then
		return
	else
	Unit:FullCastSpellOnTarget(9081,plr)
end
end

function ZalasWitherbark_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function ZalasWitherbark_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2605,1,"ZalasWitherbark_OnEnterCombat")
RegisterUnitEvent(2605,2,"ZalasWitherbark_OnLeaveCombat")
RegisterUnitEvent(2605,4,"ZalasWitherbark_OnDied")

function WitherbarkTroll_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
local tank = Unit:GetMainTank()
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,tank)
elseif (choice == 2) then
		return
end
end

RegisterUnitEvent(4974,1,"WitherbarkTroll_OnEnterCombat")

function WitherbarkShadowcaster_OnSpawn(Unit,Event)
	Unit:CastSpell(11939)
end

function WitherbarkShadowcaster_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Shadowbolt", 7000, 0)
end

function ShadowBolt(Unit,Event)
local plr = Unit:GetMainTank()
	if (plr ~= nil) then
		return
	else
	Unit:FullCastSpellOnTarget(20816,plr)
end
end

function WitherbarkShadowcaster_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkShadowcaster_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2553,1,"WitherbarkShadowcaster_OnEnterCombat")
RegisterUnitEvent(2553,2,"WitherbarkShadowcaster_OnLeaveCombat")
RegisterUnitEvent(2553,4,"WitherbarkShadowcaster_OnDied")
RegisterUnitEvent(2553,18,"WitherbarkShadowcaster_OnSpawn")

function WitherbarkShadowHunter_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local choice = math.random(1,2)
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(7646,plr)
		Unit:RegisterEvent("ShadowWordPain", 1000, 1)
		Unit:RegisterEvent("Silence", 15000, 4)
elseif (choice == 2) then
		Unit:RegisterEvent("ShadowWordPain", 1000, 1)
		Unit:RegisterEvent("Silence", 15000, 4)
end
end

function ShadowWordPain(Unit,Event)
 if Unit:GetHealthPct() <= 29 then
	Unit:FullCastSpellOnTarget(992,plr)
end
end

function Silence(Unit,Event)
	Unit:FullCastSpellOnTarget(6726,plr)
end

function WitherbarkShadowHunter_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkShadowHunter_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2557,1,"WitherbarkShadowHunter_OnEnterCombat")
RegisterUnitEvent(2557,2,"WitherbarkShadowHunter_OnLeaveCombat")
RegisterUnitEvent(2557,4,"WitherbarkShadowHunter_OnDied")

function WitherbarkHeadhunter_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local choice = math.random(1,2)
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,plr)
		Unit:RegisterEvent("Execute", 1000, 1)
		Unit:RegisterEvent("Net", 8000, 0)
elseif (choice == 2) then
		Unit:RegisterEvent("Execute", 1000, 1)
		Unit:RegisterEvent("Net", 8000, 0)
end
end

function Execute(Unit,Event)
	if plr:GetHealthPct() == 20 then
		Unit:FullCastSpellOnTarget(7160,plr)
end
end

function Net(Unit,Event)
	Unit:FullCastSpellOnTarget(6533,plr)
end

function WitherbarkHeadhunter_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end
function WitherbarkHeadhunter_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2605,1,"WitherbarkHeadhunter_OnEnterCombat")
RegisterUnitEvent(2605,2,"WitherbarkHeadhunter_OnLeaveCombat")
RegisterUnitEvent(2605,4,"WitherbarkHeadhunter_OnDied")

function WitherbarkBerserker_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
local plr = Unit:GetMainTank()
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,plr)
		Unit:RegisterEvent("Frenzy", 1000, 1)
elseif (choice == 2) then
		Unit:RegisterEvent("Frenzy", 1000, 1)
end
end

function Frenzy(Unit,Event)
 if Unit:GetHealthPct() <= 29 then
	Unit:CastSpell(3019)
end
end

function WitherbarkBerserker_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkBerserker_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2558,1,"WitherbarkBerserker_OnEnterCombat")
RegisterUnitEvent(2558,2,"WitherbarkBerserker_OnEnterCombat")
RegisterUnitEvent(2558,4,"WitherbarkBerserker_OnDied")

function WitherbarkAxeThrower_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
local plr = Unit:GetMainTank()
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,plr)
		Unit:FullCastSpellOnTarget(10277,plr)
elseif (choice == 2) then
		Unit:FullCastSpellOnTarget(10277,plr)
end
end

RegisterUnitEvent(2554,1,"WitherbarkAxeThrower_OnEnterCombat")

function VengefulSurge_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("FrostNova", 14000, 1)
end

function FrostNova(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(14907,plr)
end

function VengefulSurge_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function VengefulSurge_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2776,1,"VengefulSurge_OnEnterCombat")
RegisterUnitEvent(2776,2,"VengefulSurge_OnLeaveCombat")
RegisterUnitEvent(2776,4,"VengefulSurge_OnDied")

function ThunderingExile_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegsiterEvent("LightningBolt", 4000, 0)
	Unit:RegsiterEvent("Shock", 22000, 0)
end

function LightningBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(9532,plr)
end

function Shock(Unit,Event)
	Unit:FullCastSPellOnTarget(11824,plr)
end

function ThunderingExile_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function ThunderingExile_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2762,1,"ThunderingExile_OnEnterCombat")
RegisterUnitEvent(2762,2,"ThunderingExile_OnLeaveCombat")
RegisterUnitEvent(2762,4,"ThunderingExile_OnDied")

function SyndicateThief_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Backstab", 1000, 1)
	Unit:RegisterEvent("Disarm", 13000, 1)
	Unit:RegisterEvent("Poison", 20000, 1)
end

function Backstab(Unit,Event)
	Unit:FullCastSpellOnTarget(7159,plr)
end

function Disarm(Unit,Event)
	Unit:FullCastSpellOnTarget(6713,plr)
end

function Poison(Unit,Event)
	Unit:FullCastSpellOnTarget(744,plr)
end

function SyndicateThief_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SyndicateThief_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2241,1,"SyndicateThief_OnEnterCombat")
RegisterUnitEvent(2241,2,"SyndicateThief_OnLeaveCombat")
RegisterUnitEvent(2241,4,"SyndicateThief_OnDied")

function SyndicateProwler_OnSpawn(Unit,Event)
	Unit:CastSpell(1784)
end

function SyndicateProwler_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Disarm", 13000, 1)
	Unit:RegisterEvent("SinisterStrike", 6000, 1)
end

function Disarm(Unit,Event)
	Unit:FullCastSpellOnTarget(6713,plr)
end

function SinisterStrike(Unit,Event)
	Unit:FullCastSpellOnTarget(14873,plr)
end

function SyndicateProwler_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SyndicateProwler_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2588,18,"SyndicateProwler_OnSpawn")
RegisterUnitEvent(2588,1,"SyndicateProwler_OnEnterCombat")
RegisterUnitEvent(2588,2,"SyndicateProwler_OnLeaveCombat")
RegisterUnitEvent(2588,4,"SyndicateProwler_OnDied")

function SyndicatePathstalker_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(6660,plr)
end

RegisterUnitEvent(2587,1,"SyndicatePathstalker_OnEnterCombat")

function SyndicateMagus_OnSpawn(Unit,Event)
	Unit:CastSpell(12544)
end

function SyndicateMagus_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Frostbolt", 11000, 0)
end

function Frostbolt(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(9672,plr)
end

function SyndicateMagus_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SyndicateMagus_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2591,18,"SyndicateMagus_OnSpawn")
RegisterUnitEvent(2591,1,"SyndicateMagus_OnEnterCombat")
RegisterUnitEvent(2591,2,"SyndicateMagus_OnLeaveCombat")
RegisterUnitEvent(2591,4,"SyndicateMagus_OnDied")

function SyndicateHighwayman_OnSpawn(Unit,Event)
	Unit:CastSpell(1784)
end

function SyndicateHighwayman_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Backstab", 8000, 0)
end

function Backstab(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(37685,plr)
end

function SyndicateHighwayman_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SyndicateHighwayman_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2586,18,"SyndicateHighwayman_OnSpawn")
RegisterUnitEvent(2586,1,"SyndicateHighwayman_OnEnterCombat")
RegisterUnitEvent(2586,2,"SyndicateHighwayman_OnLeaveCombat")
RegisterUnitEvent(2586,4,"SyndicateHighwayman_OnDied")

function SyndicateConjuror_OnSpawn(Unit,Event)
	Unit:FullCastSpell(43896)
	Unit:FullCastSpell(25085)
end

function SyndicateConjuror_OnEnterCombat(Unit,Event)
local X,Y,Z = Unit:GetX(),Unit:GetY(),Unit:GetZ()
local plr = Unit:GetMainTank()
local PX,PY,PZ = plr:GetX(),plr:GetY(),plr:GetZ()
local VoidWalker = Unit:GetCreatureNearestCoords(X,Y,Z,24476)
	VoidWalker:MoveTo(PX,PY,PZ)
	Unit:RegsiterEvent("ShadowBolt", 4000, 0)
	Unit:RegsiterEvent("Sleep", 23000, 0)
end

function ShadowBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(9613,plr)
end

function Sleep(Unit,Event)
	Unit:FullCastSpellOnTarget(15970,plr)
end

function SyndicateConjuror_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function SyndicateConjuror_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2590,18,"SyndicateConjuror_OnSpawn")
RegisterUnitEvent(2590,1,"SyndicateConjuror_OnEnterCombat")
RegisterUnitEvent(2590,2,"SyndicateConjuror_OnLeaveCombat")
RegisterUnitEvent(2590,4,"SyndicateConjuror_OnDied")

function Singer_OnEnterCombat(Unit,Event)
	Unit:CastSpell(13730)
	Unit:RegisterEvent("DominateMind", 34000, 0)
end

function DominateMind(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(14515,plr)
end

function Singer_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Singer_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2600,1,"Singer_OnEnterCombat")
RegisterUnitEvent(2600,2,"Singer_OnLeaveCombat")
RegisterUnitEvent(2600,4,"Singer_OnDied")

function RuulOnestone_OnEnterCombat(Unit,Event)
	Unit:CastSpell(6742)
	Unit:RegisterEvent("LightningBolt", 5000, 0)
end

function LightningBolt(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(9532,plr)
end

function RuulOnestone_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function RuulOnestone_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2602,1,"RuulOnestone_OnEnterCombat")
RegisterUnitEvent(2602,2,"RuulOnestone_OnLeaveCombat")
RegisterUnitEvent(2602,4,"RuulOnestone_OnDied")

function RumblingExile_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(6524,plr)
end

RegisterUnitEvent(2592,1,"RumblingExile_OnEnterCombat")

function PlainsCreeper_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("EncasingWebs", 18000, 0)
	Unit:RegisterEvent("Poison", 5000, 1)
end

function EncasingWebs(Unit,Event)
	Unit:FullCastSpellOnTarget(4962,plr)
end

function Poison(Unit,Event)
	Unit:FullCastSpellOnTarget(744,plr)
end

function PlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function PlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2563,1,"PlainsCreeper_OnEnterCombat")
RegisterUnitEvent(2563,2,"PlainsCreeper_OnLeaveCombat")
RegisterUnitEvent(2563,4,"PlainsCreeper_OnDied")

function Otto_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Pummel", 12000, 0)
	Unit:RegisterEvent("Backhand", 16000, 0)
end

function Pummel(Unit,Event)
	Unit:FullCastSpellOnTarget(12555,plr)
end

function Backhand(Unit,Event)
	Unit:FullCastSpellOnTarget(6253,plr)
end

function Otto_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Otto_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2599,1,"Otto_OnEnterCombat")
RegisterUnitEvent(2599,2,"Otto_OnLeaveCombat")
RegisterUnitEvent(2599,4,"Otto_OnDied")

function NimarTheSlayer_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Cleave", 5000, 0)
	Unit:RegisterEvent("Whirlwind", 14000, 0)
end

function Cleave(Unit,Event)
	Unit:FullCastSpellOnTarget(845,plr)
end

function Whirlwind(Unit,Event)
	Unit:FullCastSpellOnTarget(15576,plr)
	Unit:CastSpellOnTarget(17207,plr)
end

function NimarTheSlayer_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function NimarTheSlayer_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2606,1,"NimarTheSlayer_OnEnterCombat")
RegisterUnitEvent(2606,2,"NimarTheSlayer_OnLeaveCombat")
RegisterUnitEvent(2606,4,"NimarTheSlayer_OnDied")

function MoloktheCrusher_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Backhand", 16000, 0)
end

function Backhand(Unit,Event)
	Unit:FullCastSpellOnTarget(6253,plr)
end

function MoloktheCrusher_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function MoloktheCrusher_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2604,1,"MoloktheCrusher_OnEnterCombat")
RegisterUnitEvent(2604,2,"MoloktheCrusher_OnLeaveCombat")
RegisterUnitEvent(2604,4,"MoloktheCrusher_OnDied")

function MesaBuzzard_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local choice = math.random(1,2)
	if (choice == 1) then 	
		Unit:FullCastSpellOnTarget(8139,plr)
elseif (choice == 2) then
		return
end
end

RegisterUnitEvent(2579,1,"MesaBuzzard_OnEnterCombat")

function LordFalconcrest_OnEnterCombat(Unit,Event)
	Unit:CastSpell()
	Unit:RegisterEvent("Disarm", 23000, 0)
end

function Disarm(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(6713,plr)
end

function LordFalconcrest_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function LordFalconcrest_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2597,1,"LordFalconcrest_OnEnterCombat")
RegisterUnitEvent(2597,2,"LordFalconcrest_OnLeaveCombat")
RegisterUnitEvent(2597,4,"LordFalconcrest_OnDied")

function Kovork_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
	if (choice == 1) then
		Unit:CastSpell(8269)
elseif (choice == 2) then
		return
end
end

RegisterUnitEvent(2603,1,"Kovork_OnEnterCombat")

function KorgreshColdrage_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("FrostNova", 25000, 0)
	Unit:RegisterEvent("TrelanesFreezingTouch", 45000, 0)
end

function FrostNova(Unit,Event)
	Unit:FullCastSpellOnTarget(865,plr)
end

function TrelanesFreezingTouch(Unit,Event)
	Unit:FullCastSpellOnTarget(4320,plr)
end

function KorgreshColdrage_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function KorgreshColdrage_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2793,1,"KorgreshColdrage_OnEnterCombat")
RegisterUnitEvent(2793,2,"KorgreshColdrage_OnLeaveCombat")
RegisterUnitEvent(2793,4,"KorgreshColdrage_OnDied")

function HighlandThrasher_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Thrash", 7000, 0)
end

function Thrash(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:FullCastSpellOnTarget(3391,plr)
end

function HighlandThrasher_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function HighlandThrasher_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2560,1,"HighlandThrasher_OnEnterCombat")
RegisterUnitEvent(2560,2,"HighlandThrasher_OnLeaveCombat")
RegisterUnitEvent(2560,4,"HighlandThrasher_OnDied")

function HighlandFleshstalker_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
 if Unit:GetHealthPct() <= 29 then
	Unit:FullCastSpellOnTarget(3393,plr)
end
end

RegisterUnitEvent(2561,1,"HighlandFleshstalker_OnEnterCombat")

function GiantPlainsCreeper_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("EncasingWebs", 18000, 0)
	Unit:RegisterEvent("Poison", 5000, 1)
end

function EncasingWebs(Unit,Event)
	Unit:FullCastSpellOnTarget(4962,plr)
end

function Poison(Unit,Event)
	Unit:FullCastSpellOnTarget(744,plr)
end

function GiantPlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function GiantPlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2565,1,"GiantPlainsCreeper_OnEnterCombat")
RegisterUnitEvent(2565,2,"GiantPlainsCreeper_OnLeaveCombat")
RegisterUnitEvent(2565,4,"GiantPlainsCreeper_OnDied")

function GeomancerFlintdagger_OnSpawn(Unit,Event)
	Unit:CastSpell(2601)
end

function GeomancerFlintdagger_OnEnterCombat(Unit,Event)
local X,Y,Z = Unit:GetX(),Unit:GetY(),Unit:GetZ()
local totem = Unit:GetCreatureNearestCoords(X,Y,Z,6111)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("FireNovaTotem", 15000, 1)
	Unit:RegisterEvent("Fireball", 3000, 1)
end

function FireNovaTotem(Unit,Event)
 if (totem ~= nil) then
	return
	else
	Unit:CastSpell(8499)
end
end

function Fireball(Unit,Event)
	Unit:FullCastSpellOnTarget(20823,plr)
end

function GeomancerFlintdagger_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function GeomancerFlintdagger_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2609,18,"GeomancerFlintdagger_OnSpawn")
RegisterUnitEvent(2609,1,"GeomancerFlintdagger_OnEnterCombat")
RegisterUnitEvent(2609,2,"GeomancerFlintdagger_OnLeaveCombat")
RegisterUnitEvent(2609,4,"GeomancerFlintdagger_OnDied")

function Foulbelly_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Aura.Of.Rot", 35000, 0)
	Unit:RegisterEvent("Deadly.Poison", 80000, 0)
	Unit:RegisterEvent("Plague.Cloud", 5000, 1)
	Unit:RegisterEvent("Slowing.Poison", 45000, 0)
end

function Aura.Of.Rot(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpell(3106)
 end
end

function Deadly.Poison(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(3583,plr)
 end
end

function Plague.Cloud(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(3256,plr)
 end
end

function Slowing.Poison(Unit,Event)
 if (plr ~= nil) then 
	return
	else
	Unit:FullCastSpellOnTarget(7992,plr)
 end
end

function Foulbelly_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Foulbelly_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegsiterUnitEvent(2601,1,"Foulbelly_OnEnterCombat")
RegsiterUnitEvent(2601,2,"Foulbelly_OnLeaveCombat")
RegsiterUnitEvent(2601,4,"Foulbelly_OnDied")

function Elder.Mesa.Buzzard_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local choice = math.random(1,2)
	if (choice == 1) then
	Unit:FullCastSpellOnTarget(8139,plr)
elseif (choice == 2) then
	return
	end
end

RegsiterUnitEvent(2580, 1, "Elder.Mesa.Buzzard_OnEnterCombat")


function Drywhisker.Surveyor_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Frost.Nova", 20000, 0)
	Unit:RegisterEvent("Frostbolt", 9000, 0)
end

function Frost.Nova(Unit,Event)
	Unit:FullCastSpell(865)
end

function FrostBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(20822,plr)
end

function Drywhisker.Surveyor_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Surveyor_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Surveyor_OnSpawn(Unit,Event)
	Unit:FullCastSpell(12544)
end

RegisterUnitEvent(2573, 1, "Drywhisker.Surveyor_OnEnterCombat")
RegisterUnitEvent(2573, 2, "Drywhisker.Surveyor_OnLeaveCombat")
RegisterUnitEvent(2573, 4, "Drywhisker.Surveyor_OnDied")
RegisterUnitEvent(2573, 18, "Drywhisker.Surveyor_OnSpawn")

function Drywhisker.Digger_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local HP = Unit:GetHealthPct()
	Unit:RegsiterEvent("Sunder.Armor", 9000, 0)
end

function Sunder.Armor(Unit,Event)
 if (plr ~= nil) then
	return
	elseif(HP <= 36) then
		Unit:FullCastSpellOnTarget(8380,plr)
 end
end

function Drywhisker.Digger_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Digger_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Digger_OnSpawn(Unit,Event)
	Unit:FullCastSpell(7164)
end

RegisterUnitEvent(2574, 1, "Drywhisker.Digger_OnEnterCombat")
RegisterUnitEvent(2574, 2, "Drywhisker.Digger_OnLeaveCombat")
RegisterUnitEvent(2574, 4, "Drywhisker.Digger_OnDied")
RegisterUnitEvent(2574, 18, "Drywhisker.Digger_OnSpawn")

function Dark.Iron.Supplier_OnEnterCombat(Unit,Event)
local X,Y,Z = Unit:GetX(),Unit:GetY(),Unit:GetZ()
local plr = Unit:GetMainTank()
local DarkIronSupplier = Unit:GetCreatureNearestCoords(X,Y,Z,2575)
	Unit:RegisterEvent("Poison", 45000, 0)
	Unit:RegisterEvent("Resupply", 11000, 0)
end

function Poison(Unit,Event)
 if (plr ~= nil) then
	return
	else
	Unit:FullCastSpellOnTarget(744,plr)
end

function Resupply(Unit,Event)
local Choice == math.random(1,2)
 if (choice == 1) then
	if (DarkIronSupplier:GetHealthPct() <= 15) then
		Unit:FullCastSpellOnTarget(4961,DarkIronSupplier)
	end
 end
 if (choice == 2) then
	if (HP <= 15) then
		Unit:FullCastSpell(4961)
	end
 end
end

function Dark.Iron.Supplier_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Dark.Iron.Supplier_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2575, 1, "Dark.Iron.Supplier_OnEnterCombat")
RegisterUnitEvent(2575, 2, "Dark.Iron.Supplier_OnLeaveCombat")
RegisterUnitEvent(2575, 4, "Dark.Iron.Supplier_OnDied")

function Dark.Iron.Shadowcaster_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Immolate", 4000, 1)
	Unit:RegisterEvent("ShadowBolt", 7000, 0)
end

function Immolate(Unit,Event)
 if (plr ~= nil) then
	return
	else
	Unit:FullCastSpellOnTarget(2941,plr)
 end
end

function ShadowBolt(Unit,Event)
 if (plr ~= nil) then
	return
	else
	Unit:FullCastSpellOnTarget(20816,plr)
 end
end

function Dark.Iron.Shadowcaster_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Dark.Iron.Shadowcaster_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2577, 1, "Dark.Iron.Shadowcaster_OnEnterCombat")
RegisterUnitEvent(2577, 2, "Dark.Iron.Shadowcaster_OnLeaveCombat")
RegisterUnitEvent(2577, 4, "Dark.Iron.Shadowcaster_OnDied")


function Dark.Iron.Bombardier_OnEnterCombat(Unit,Event)
local HP = Unit:GetHealthPct()
local plr = Unit:GetMainTank()
local PX,PY,PZ = plr:GetX(),plr:GetY(),plr:GetZ()
 if (HP <= 21) then
	Unit:CastSpellAoF(PX,PY,PZ,8858)
end
end

RegisterUnitEvent(4062, 1, "Dark.Iron.Bombardier_OnEnterCombat")