local math_random = math.random

function secret_shop(pos, surface)
	if surface.count_entities_filtered{area={{pos.x - 128, pos.y - 128}, {pos.x + 128, pos.y + 128}}, name="market", limit=1} > 0 then return end
	local secret_market_items = {
	{price = {{"coin", math_random(8,16)}}, offer = {type = 'give-item', item = 'grenade'}},
    {price = {{"coin", math_random(25,50)}}, offer = {type = 'give-item', item = 'cluster-grenade'}}, 
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'defender-capsule'}}, 
	{price = {{"coin", math_random(25,50)}}, offer = {type = 'give-item', item = 'distractor-capsule'}}, 
	{price = {{"coin", math_random(35,70)}}, offer = {type = 'give-item', item = 'destroyer-capsule'}}, 
	{price = {{"coin", math_random(60,120)}}, offer = {type = 'give-item', item = 'cliff-explosives'}},
    {price = {{"coin", math_random(250,350)}}, offer = {type = 'give-item', item = 'belt-immunity-equipment'}},
    {price = {{"coin", math_random(30,60)}}, offer = {type = 'give-item', item = 'construction-robot'}},  
	{price = {{"coin", math_random(100,200)}}, offer = {type = 'give-item', item = 'loader'}},
	{price = {{"coin", math_random(200,300)}}, offer = {type = 'give-item', item = 'fast-loader'}},
	{price = {{"coin", math_random(300,500)}}, offer = {type = 'give-item', item = 'express-loader'}},
	{price = {{"coin", math_random(100,200)}}, offer = {type = 'give-item', item = 'locomotive'}},
	{price = {{"coin", math_random(75,150)}}, offer = {type = 'give-item', item = 'cargo-wagon'}},	
	{price = {{"coin", math_random(2,3)}}, offer = {type = 'give-item', item = 'rail'}},
	--{price = {{"coin", math_random(20,40)}}, offer = {type = 'give-item', item = 'train-stop'}},	
	{price = {{"coin", math_random(4,12)}}, offer = {type = 'give-item', item = 'small-lamp'}},			
	{price = {{"coin", math_random(80,160)}}, offer = {type = 'give-item', item = 'car'}},
	{price = {{"coin", math_random(300,600)}}, offer = {type = 'give-item', item = 'electric-furnace'}},
	--{price = {{"coin", math_random(300,600)}}, offer = {type = 'give-item', item = "assembling-machine-3"}},
	{price = {{"coin", math_random(80,160)}}, offer = {type = 'give-item', item = 'effectivity-module'}},
	{price = {{"coin", math_random(80,160)}}, offer = {type = 'give-item', item = 'productivity-module'}},
	{price = {{"coin", math_random(80,160)}}, offer = {type = 'give-item', item = 'speed-module'}},
	
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'wood', count = 50}},
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'iron-ore', count = 50}},
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'copper-ore', count = 50}},
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'stone', count = 50}},
	{price = {{"coin", math_random(5,10)}}, offer = {type = 'give-item', item = 'coal', count = 50}},
	{price = {{"coin", math_random(8,16)}}, offer = {type = 'give-item', item = 'uranium-ore', count = 50}},
	
	{price = {{'wood', math_random(10,12)}}, offer = {type = 'give-item', item = "coin"}},
	{price = {{'iron-ore', math_random(10,12)}}, offer = {type = 'give-item', item = "coin"}},
	{price = {{'copper-ore', math_random(10,12)}}, offer = {type = 'give-item', item = "coin"}},
	{price = {{'stone', math_random(10,12)}}, offer = {type = 'give-item', item = "coin"}},
	{price = {{'coal', math_random(10,12)}}, offer = {type = 'give-item', item = "coin"}},
	{price = {{'uranium-ore', math_random(8,10)}}, offer = {type = 'give-item', item = "coin"}}
	}
	table.shuffle_table(secret_market_items)
										
	local market = surface.create_entity {name = "market", position = pos}
	market.destructible = false			
	
	for i = 1, math_random(6, 8), 1 do
		market.add_market_item(secret_market_items[i])
	end
end