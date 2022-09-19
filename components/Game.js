import React from 'react'
import Balloon from './Balloon'

function generateAnswers(question)
{
    const correctIndex = Math.floor(Math.random() * 5);

    const answersReturn = []

    for (let i = 0; i < 5; i++)
    {
        answersReturn.push(Math.floor(Math.random() * 99) + 1);
    }

    answersReturn[correctIndex] = question.q1 * question.q2
    //todo deel support
    
}

export default function Game({question}) {
   const answers = generateAnswers(question);
  return (
    <>
    <p className='absolute text-[#0097fd] font-semibold text-[18rem] -translate-y-[50%] w-full text-center mt-[45vh]'>{question.q1} {(question.type == 'mul') ? 'X' : '/'} {question.q2}</p>
    <div className='flex flex-row min-h-[100vh] justify-between w-[80%] mx-auto'>
        <Balloon answer={5} color={'white'} speed={50} />
        <Balloon answer={5} color={'yellow'} speed={50}/>
        <Balloon answer={5} color={'green'} speed={50}/>
        <Balloon answer={5} color={'pink'} speed={50}/>
        <Balloon answer={5} color={'blue'} speed={50}/>
      </div>
    </>
    
  )
}
