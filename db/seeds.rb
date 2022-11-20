# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'Mario' }, 
                     { name: 'Luigi' },
                     { name: 'Zelda' },
                     { name: 'Link' }])

categories = Category.create([{ body: 'Backend' },
                              { body: 'Frontend' },
                              { body: 'Game development' }])

tests = Test.create([{ title: 'Ruby', level: 0, category: categories[0] },
                  { title: 'Rails', level: 1, category: categories[0] },
                  { title: 'HTML and CSS', level: 0, category: categories[1] },
                  { title: 'Unreal Engine 5', level: 1, category: categories[2] }])

questions = Question.create([{ body: 'Ruby test', test: tests[0] },
                          { body: 'Rails test', test: tests[1] },
                          { body: 'HTML and CSS test', test: tests[2] },
                          { body: 'Unreal Engine 5 test', test: tests[3] }])
                          
answers = Answer.create([{ body: 'Ruby test answer 1', question: questions[0] },
                      { body: 'Ruby test answer 2', question: questions[0] },
                      { body: 'Ruby test answer 3', question: questions[0], correct: true },
                      { body: 'Rails test answer 1', question: questions[1] },
                      { body: 'Rails test answer 2', question: questions[1] },
                      { body: 'Rails test answer 3', question: questions[1], correct: true },
                      { body: 'HTML and CSS test answer 1', question: questions[2] },
                      { body: 'HTML and CSS test answer 2', question: questions[2] },
                      { body: 'HTML and CSS test answer 3', question: questions[2], correct: true },
                      { body: 'Unreal Engine 5 test answer 1', question: questions[3] },
                      { body: 'Unreal Engine 5 test answer 2', question: questions[3] },
                      { body: 'Unreal Engine 5 test answer 3', question: questions[3], correct: true }])
