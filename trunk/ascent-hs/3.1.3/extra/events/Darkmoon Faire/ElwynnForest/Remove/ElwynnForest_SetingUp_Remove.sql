/*
Title: Darkmoon Faire
Author: Nexis
Series: Setup
Location: Elwynn Forest
*/

-- Delete Gameobject Spawns
delete from `gameobject_spawns` where `id` between '150000' and '150064';

-- Delete NPCs
delete from `creature_spawns` where `id` between '150000' and '150006';

-- Delete Waypoints
delete from `creature_waypoints` where (`spawnid`='150005');
delete from `creature_waypoints` where (`spawnid`='150006');

-- Delete Custom Creatures
delete from `creature_names` where `entry` between '30000' and '30003';
delete from `creature_proto` where `entry` between '30000' and '30003';

-- Delete NPC Text
delete from `npc_text` where `entry` between '50000' and '50003';



delete from `gameobject_spawns` where id in
(
'100000',
'100001', 
'100002', 
'100003', 
'100004',
'100005',
'100006', 
'100007', 
'100008', 
'100009', 
'100010', 
'100011', 
'100012', 
'100013', 
'100014', 
'100015', 
'100016', 
'100017', 
'100018', 
'100019', 
'100020', 
'100021', 
'100022', 
'100023', 
'100024', 
'100025', 
'100026', 
'100027', 
'100028', 
'100029', 
'100030', 
'100031', 
'100032',
'100033', 
'100034', 
'100035', 
'100036',
'100038', 
'100039', 
'100040', 
'100041', 
'100042', 
'100043', 
'100044', 
'100045', 
'100046', 
'100047', 
'100048', 
'100049', 
'100050', 
'100051', 
'100052', 
'100053', 
'100054', 
'100055', 
'100056', 
'100057',
'100058', 
'100059', 
'100060', 
'100061', 
'100062', 
'100063', 
'100064'
)
;
 
