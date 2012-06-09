#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def add_question(identifier, desc, correct_index)
	puts "Adding question with identifier " + identifier
	Question.create(:identifier => identifier, :description => desc, 
		:correct_answer_index => correct_index);
	puts "Question added"
end


add_question(
	"L1Q1",
	"Question 1 - Engage the explanation that describes what happen when " +
	"you push \n the red button.",
	1);
add_question(
	"L1Q2",
	"Question 2 - Engage the best description of molecular density for the liquid.",
	3);
add_question(
	"L1Q3",
	"Question 3 - Engage the factor that explains the process of gas to liquid " +
	"drops, your condensation.",
	2);
add_question(
	"L1Q3",
	"Question 3 - Engage the factor that explains the process of gas to liquid " +
	"drops, your condensation.",
	2);
add_question(
	"L1Q4",
	"Question 4 - Engage the explanation why the liquid changed to a gas.",
	0);
add_question(
	"L1Q5",
	"Question 5 - Engage the explanation of what changes for a chemical or physical " +
	 "change to occur.",
	2);

def add_answer(ques_identifier, desc, score, feedback, index)
	ques = Question.find_by_identifier(ques_identifier)

	if(!ques)
		puts "Failed to add answers for question " + ques_identifier
	end

	puts "Adding answer for " + ques_identifier
	
	answer = Answer.new(:description => desc, :score => score, :feedback => feedback, 
		:index => index)
	ques.answers << answer

	puts "Answer added"
end

add_answer(
	"L1Q1", 
	"The liquid becomes a solid because the molecules are moving more slowly",
	1,
	"Not quite--observe the globe more closely",
	0);

add_answer(
	"L1Q1", 
	"The liquid releases gas as the molecules move quickly and have energy to escape.",
	2,
	"Observant human! Consider cooking with grease or water with the loss that boiling " +
	"brings with it.",
	1);

add_answer(
	"L1Q1", 
	"The liquid becomes plasma as the molecules have enough energy to glow",
	0,
	"Looking closely, is there any observable light emission?",
	2);

add_answer(
	"L1Q1", 
	"The liquid remains unchanged as a liquid.",
	0,
	"Not an observant human. Observe the contents of the globe more closely.",
	3);

add_answer(
	"L1Q2",
  "The blue button aligns the molecules to become more dense, the red button spreads \n the " +
  "molecules to less density.",
  1,
  "The reason for the density changes remains ambiguous. What do the buttons do to create " + 
  "those changes?",
  0);

add_answer(
	"L1Q2",
  "The blue button aligns the molecules to decrease density, the red button \n expands the " +
  "molecules and creates greater density.",
  0,
  "No, access the definition of density and observe the globe again.",
  1);

add_answer(
	"L1Q2",
  "The density of the materials remains the same from red to blue button.",
  "0",
  "That doesn't seem correct. More observation is needed of the molecules.",
  2);

add_answer(
	"L1Q2",
  "The blue button removes energy, causing the molecules to align while becoming \n less " + 
  "dense, the red button increases the energy to break the \n alignment ultimately creating " +
  "less density.",
  "2",
  "Observant human. Application of heat energy dramatically changes how dense the molecules are.",
  3);

add_answer(
	"L1Q3",
	"The less dense gas molecules escape causing the dense liquid to fall.",
  "0",
  "No, this does not relate directly to factors of density.",
  0);

add_answer(
	"L1Q3",
  "The molecules change to a different chemical in the air and falls back to the water.",
  "0",
  "Not an oberservant human. We observe no chemical change in globe.",
  1);

add_answer(
	"L1Q3",
  "Heat energy is released causing the molecules to slow and get closer returning \n to " +
  "the liquid.",
  "2",
  "Observant human. Similar to your ice water glass on a hot day leaving a water ring on " +
  "a table.",
	2);

add_answer(
	"L1Q3",
  "The container directs the flow of energy to fall back into a new container.",
  "1",
  "Not quite, as the container bears little effect.",
  3);

add_answer(
	"L1Q4",
	"Heat energy caused the molecules to move faster and farther apart until some \n molecules " +
	"have enough energy to escape as a gas.",
  "2",
  "Observant human. Ponder why a fog appears on a pond some mornings.",
  0);

add_answer(
	"L1Q4",
  "The liquid changed into a gas when heated because it expands and the container \n can " +
  "no longer hold it.",
  "1",
  "Not quite, as the container bears little effect.",
	1);

add_answer(
	"L1Q4",
  "The molecules change to a different chemical that is a gas and \n escapes from the water.",
  "0",
  "We observe no molecular change in globe.",
  2);


add_answer(
	"L1Q4",
  "when the liquid was heated, molecules of gas are dissolved and rise and escape \n because " +
  "they are less dense.",
  "0",
  "Please dismiss factors of density.",
	3);

add_answer(
	"L1Q5",
	"Change in mass.",
  "1",
  "No, as mass requires additional stimuli.",
  0);

add_answer(
	"L1Q5",
	"Change in size.",
  "0",
  "No, since there are other factors that would affect size.",
  1);

add_answer(
	"L1Q5",
	"Change in energy.",
  "2",
  "Observant Human. Without an energy input what would happen to the state of the liquid?",
	2);

add_answer(
	"L1Q5",
	"Change in color.",
  "0",
  "No, color change results from other stimuli.",
  3);