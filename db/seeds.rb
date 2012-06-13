#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def add_teachers(name, school, state)
	Teacher.create(:name => name, :school => school, :state => state)
end

add_teachers("Stephanie Kawamura", "InTech", "UT")

def add_question(identifier, desc, correct_ans_identifier)
	puts "Adding question with identifier " + identifier
	Question.create(:identifier => identifier, :description => desc, 
		:correct_answer_identifier => correct_ans_identifier);
	puts "Question added"
end


add_question(
	"L1Q1",
	"Question 1 - Engage the explanation that describes what happen when " +
	"you push \n the red button.",
	"Q1A2");
add_question(
	"L1Q2",
	"Question 2 - Engage the best description of molecular density for the liquid.",
	"Q2A4");
add_question(
	"L1Q3",
	"Question 3 - Engage the factor that explains the process of gas to liquid " +
	"drops, your condensation.",
	"Q3A3");
add_question(
	"L1Q4",
	"Question 4 - Engage the explanation why the liquid changed to a gas.",
	"Q4A1");
add_question(
	"L1Q5",
	"Question 5 - Engage the explanation of what changes for a chemical or physical " +
	 "change to occur.",
	"Q5A3");

def add_answer(ques_identifier, desc, score, feedback, ans_identifier)
	ques = Question.find_by_identifier(ques_identifier)

	if(!ques)
		puts "Failed to add answers for question " + ques_identifier
	end

	puts "Adding answer for " + ques_identifier
	
	answer = Answer.new(:description => desc, :score => score, :feedback => feedback, 
		:identifier => ans_identifier)
	ques.answers << answer

	puts "Answer added"
end

add_answer(
	"L1Q1", 
	"The liquid becomes a solid because the molecules are moving more slowly",
	1,
	"Not quite--observe the globe more closely",
	"Q1A1");

add_answer(
	"L1Q1", 
	"The liquid releases gas as the molecules move quickly and have energy to escape.",
	2,
	"Observant human! Consider cooking with grease or water with the loss that boiling " +
	"brings with it.",
	"Q1A2");

add_answer(
	"L1Q1", 
	"The liquid becomes plasma as the molecules have enough energy to glow",
	0,
	"Looking closely, is there any observable light emission?",
	"Q1A3");

add_answer(
	"L1Q1", 
	"The liquid remains unchanged as a liquid.",
	0,
	"Not an observant human. Observe the contents of the globe more closely.",
	"Q1A4");

add_answer(
	"L1Q2",
  "The blue button aligns the molecules to become more dense, the red button spreads \n the " +
  "molecules to less density.",
  1,
  "The reason for the density changes remains ambiguous. What do the buttons do to create " + 
  "those changes?",
  "Q2A1");

add_answer(
	"L1Q2",
  "The blue button aligns the molecules to decrease density, the red button \n expands the " +
  "molecules and creates greater density.",
  0,
  "No, access the definition of density and observe the globe again.",
  "Q2A2");

add_answer(
	"L1Q2",
  "The density of the materials remains the same from red to blue button.",
  0,
  "That doesn't seem correct. More observation is needed of the molecules.",
  "Q2A3");

add_answer(
	"L1Q2",
  "The blue button removes energy, causing the molecules to align while becoming \n less " + 
  "dense, the red button increases the energy to break the \n alignment ultimately creating " +
  "less density.",
  2,
  "Observant human. Application of heat energy dramatically changes how dense the molecules are.",
  "Q2A4");

add_answer(
	"L1Q3",
	"The less dense gas molecules escape causing the dense liquid to fall.",
  0,
  "No, this does not relate directly to factors of density.",
  "Q3A1");

add_answer(
	"L1Q3",
  "The molecules change to a different chemical in the air and falls back to the water.",
  0,
  "Not an oberservant human. We observe no chemical change in globe.",
  "Q3A2");

add_answer(
	"L1Q3",
  "Heat energy is released causing the molecules to slow and get closer returning \n to " +
  "the liquid.",
  2,
  "Observant human. Similar to your ice water glass on a hot day leaving a water ring on " +
  "a table.",
	"Q3A3");

add_answer(
	"L1Q3",
  "The container directs the flow of energy to fall back into a new container.",
  1,
  "Not quite, as the container bears little effect.",
  "Q3A4");

add_answer(
	"L1Q4",
	"Heat energy caused the molecules to move faster and farther apart until some \n molecules " +
	"have enough energy to escape as a gas.",
  2,
  "Observant human. Ponder why a fog appears on a pond some mornings.",
  "Q4A1");

add_answer(
	"L1Q4",
  "The liquid changed into a gas when heated because it expands and the container \n can " +
  "no longer hold it.",
  1,
  "Not quite, as the container bears little effect.",
	"Q4A2");

add_answer(
	"L1Q4",
  "The molecules change to a different chemical that is a gas and \n escapes from the water.",
  0,
  "We observe no molecular change in globe.",
  "Q4A3");


add_answer(
	"L1Q4",
  "when the liquid was heated, molecules of gas are dissolved and rise and escape \n because " +
  "they are less dense.",
  0,
  "Please dismiss factors of density.",
	"Q4A4");

add_answer(
	"L1Q5",
	"Change in mass.",
  1,
  "No, as mass requires additional stimuli.",
  "Q5A1");

add_answer(
	"L1Q5",
	"Change in size.",
  0,
  "No, since there are other factors that would affect size.",
  "Q5A2");

add_answer(
	"L1Q5",
	"Change in energy.",
  2,
  "Observant Human. Without an energy input what would happen to the state of the liquid?",
	"Q5A3");

add_answer(
	"L1Q5",
	"Change in color.",
  0,
  "No, color change results from other stimuli.",
  "Q5A4");