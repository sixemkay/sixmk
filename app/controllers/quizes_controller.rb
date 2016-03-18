class QuizesController < ApplicationController

  def furniture
    gon.furniture_questions_set = get_furniture_questions # Question.furniture
  end


  private def get_furniture_questions
    {
      results: [
        {
          value: "A",
          value_count: 1,
          result: "You answered the first answer once!",
          result_url: "http://img.pandawhale.com/post-42731-hackers-never-fear-I-is-here-g-d3DB.gif"
        },
        {
          value: "A",
          value_count: 2,
          result: "You answered the first answer twice!",
          result_url: "http://i.imgur.com/PXnBS29.jpg"
        },
        {
          value: "A",
          value_count: 3,
          result: "You answered the first answer thrice!",
          result_url: "http://mtv.mtvnimages.com/uri/mgid:file:http:shared:mtv.com/news/wp-content/uploads/2014/08/Matt-Smith-gif-demolitionvenom-21946455-350-196.gif"
        },
        {
          value: "A",
          value_count: 4,
          result: "You answered the first answer exclusively!",
          result_url: "http://media.giphy.com/media/yoJC2rz6oIx00J3HcQ/giphy.gif"
        }
      ],
      questions: [
        {
          question: %Q{ How much space do you have to work with? },
          answer_key: "space",
          answers: [
            {
              answer: %Q{ Not much, this place is pretty small. },
              value: "A"
            },
            {
              answer: %Q{ I've got a large open floorplan. },
              value: "B"
            },
            {
              answer: %Q{ My place is average sized. },
              value: "C"
            }
          ]
        },
        {
          question: %Q{ What are your floors like? },
          answer_key: "floors",
          answers: [
            {
              answer: %Q{ Neutral colored floors and maybe one neutral area rug. },
              value: "A"
            },
            {
              answer: %Q{ Concrete slab. },
              value: "B"
            },
            {
              answer: %Q{ Neutral floor with an accent rug. },
              value: "C"
            }
          ]
        },
        {
          question: %Q{ How do you feel about "stuff"? },
          answer_key: "stuff",
          answers: [
            {
              answer: %Q{ Surfaces should be bare. There should never be "stuff" out. },
              value: "A"
            },
            {
              answer: %Q{ My stuff adds to the character of my space. },
              value: "B"
            },
            {
              answer: %Q{ I have specially selected items out, but I don't have a lot of stuff out. },
              value: "C"
            }
          ]
        },
        {
          question: %Q{ What kind of color is in your space? },
          answer_key: "color",
          answers: [
            {
              answer: %Q{ Neutrals. },
              value: "A"
            },
            {
              answer: %Q{ Metal, wood, brick. },
              value: "B"
            },
            {
              answer: %Q{ Mostly Neutral with pops of color. },
              value: "C"
            }
          ]
        }
      ]
    }
  end

end
