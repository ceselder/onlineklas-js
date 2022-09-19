import React, { createContext, useEffect, useState } from 'react'
import Balloon from './Balloon'

function generateAnswers(question)
{
    const correctIndex = Math.floor(Math.random() * 5);

    const answersReturn = []

    for (let i = 0; i < 5; i++)
    {
        answersReturn.push(Math.floor(Math.random() * 99) + 1);
    }

    answersReturn[correctIndex] = question.q1 * question.q2;


    return answersReturn;
    //todo deel support
}


export default function Game({score, gameID, question, onCorrect, onIncorrect}) {
    let [speed, setSpeed] = useState(50);
    const [answers, setAnswers] = useState([0, 0, 0, 0, 0]);
    
    function check(answer)
    {
        if (answer == (question.q1 * question.q2))
        {
            onCorrect();
        }
        else
        {
            onIncorrect();
        }
    }

    useEffect(() => {
        setAnswers(generateAnswers(question));
    }, [question])

    useEffect(() => {
        setSpeed(speed => {
            console.log(speed)
            if (speed > 10)
            {
                return speed - 1;
            }
            return speed;
        })
    }, [score])

    useEffect(() => {
        const balloonsTooFarCheck = setTimeout(() => {
            onIncorrect();
        }, speed * 450)
        return () => {clearTimeout(balloonsTooFarCheck)}
    }, [gameID])
   
  return (
    <>
    <p className='absolute text-[#0097fd] select-none font-semibold text-[18rem] -translate-y-[50%] w-full text-center mt-[45vh]'>{question.q1} {(question.type == 'mul') ? 'X' : '/'} {question.q2}</p>
    <div className='flex overflow-y-clip grow-0 select-none flex-row min-h-[100vh] max-h-[100vh] justify-between w-[80%] mx-auto'>
        <Balloon gameID={gameID} onClick={() => check(answers[0])} answer={answers[0]} color={'white'} speed={speed} />
        <Balloon gameID={gameID} onClick={() => check(answers[1])} answer={answers[1]} color={'yellow'} speed={speed}/>
        <Balloon gameID={gameID} onClick={() => check(answers[2])} answer={answers[2]} color={'green'} speed={speed}/>
        <Balloon gameID={gameID} onClick={() => check(answers[3])} answer={answers[3]} color={'pink'} speed={speed}/>
        <Balloon gameID={gameID} onClick={() => check(answers[4])} answer={answers[4]} color={'blue'} speed={speed}/>
    </div>
    </>
    
  )
}
