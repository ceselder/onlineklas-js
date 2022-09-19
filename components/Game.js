import React, { createContext, useEffect, useState } from 'react'
import Balloon from './Balloon'

function generateAnswers(question) {
    const correctIndex = Math.floor(Math.random() * 5);

    const answersReturn = []

    for (let i = 0; i < 5; i++) {
        answersReturn.push(Math.floor(Math.random() * 99) + 1);
    }

    answersReturn[correctIndex] = question.q1 * question.q2;


    return answersReturn;
    //todo deel support
}


export default function Game({ allowedArray }) {

    let allowedNumbers = [];
    for (let i = 0; i < 10; i++)
    {
        if (allowedArray[i])
        {
            allowedNumbers.push(i + 1);
        }
    }

    function generateQuestion() {
        const q1 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
        const q2 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
        return { q1: q1, q2: q2, type: 'mul' }
    }

    const [speed, setSpeed] = useState(45);
    const [answers, setAnswers] = useState([0, 0, 0, 0, 0]);
    const [score, setScore] = useState(0);
    const [gameID, setGameID] = useState(0);
    const [lives, setLives] = useState(5);
    const [question, setQuestion] = useState({ q1: null, q2: null, type: 'mul' })


    function check(answer) {
        if (answer == (question.q1 * question.q2)) {
            onCorrect();
        }
        else {
            onIncorrect();
        }
    }

    useEffect(() => {
        setAnswers(generateAnswers(question));
    }, [question])

    useEffect(() => {
        setSpeed(speed => {
            console.log(speed)
            if (speed > 8) {
                return speed - 0.5;
            }
            return speed;
        })
    }, [score])

    useEffect(() => {
        const balloonsTooFarCheck = setTimeout(() => {
            onIncorrect();
        }, speed * 450)
        return () => { clearTimeout(balloonsTooFarCheck) }
    }, [gameID])

    function onGameOver() {
        alert('dood!')
    }

    function onCorrect() {
        new Audio("/sounds/1_goed.mp3").play()
        setQuestion(generateQuestion());
        setGameID(id => id + 1);
        setScore(score => score + 10);
    }

    function onIncorrect() {
        new Audio("/sounds/2_fout.mp3").play()
        setQuestion(generateQuestion());
        setGameID(id => id + 1);
        setLives(lives => {
            if (lives <= 1) {
                onGameOver()
            }
            return lives - 1;
        })
    }

    useEffect(() => {
        setQuestion(generateQuestion())
    }
        , [])

    return (
        <>
            <div className='absolute select-none bottom-0  right-0 flex gap-0'>
                {[...Array(lives)].map((e, i) => <img className='min-h-[4rem]' src="img/hp.png" key={i} />)}
            </div>
            <p className='absolute select-none text-white font-semibold text-4xl ml-2 mb-2 left-0 bottom-0'>Score: {score}</p>
            <p className='absolute text-[#0097fd] select-none font-semibold text-[18rem] -translate-y-[50%] w-full text-center mt-[45vh]'>{question.q1} {(question.type == 'mul') ? 'X' : '/'} {question.q2}</p>
            <div className='flex overflow-y-clip grow-0 select-none flex-row min-h-[100vh] max-h-[100vh] justify-between lg:w-[64rem] xl:w-[78rem] mx-auto'>
                <Balloon gameID={gameID} onClick={() => check(answers[0])} answer={answers[0]} color={'white'} speed={speed} />
                <Balloon gameID={gameID} onClick={() => check(answers[1])} answer={answers[1]} color={'yellow'} speed={speed} />
                <Balloon gameID={gameID} onClick={() => check(answers[2])} answer={answers[2]} color={'green'} speed={speed} />
                <Balloon gameID={gameID} onClick={() => check(answers[3])} answer={answers[3]} color={'pink'} speed={speed} />
                <Balloon gameID={gameID} onClick={() => check(answers[4])} answer={answers[4]} color={'blue'} speed={speed} />
            </div>
        </>

    )
}
