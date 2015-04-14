# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Section.create([{ name: 'To Do', position: 1 }, { name: 'Busy', position: 2 }, { name: 'Done', position: 3 }])

Item.create([
	{title: 'Accidental', description: 'The committee critiques the ultra offer.', section_id: 1},
	{title: 'Forthward', description: 'The mist forecasts the condition.', section_id: 1},
	{title: 'Alopecia', description: 'The son calibrates the kaput crack.', section_id: 1},
	{title: 'Implicating', description: 'The science formulates the plausible jelly.', section_id: 2},
	{title: 'Postulation', description: 'The acid pain prioritizes the daughter.', section_id: 2},
	{title: 'Despisingly', description: 'The ill-fated reason troubleshots the company.', section_id: 2},
	{title: 'Bouncy', description: 'The touch stimulates the highfalutin son.', section_id: 2},
	{title: 'Lacertidae', description: 'The untidy snow defers the fruit.', section_id: 3},
	{title: 'Aviculture', description: 'The transport compiles the join.', section_id: 3},
])