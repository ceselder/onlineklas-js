import React, { createContext, useEffect, useState } from 'react'
import Balloon from './Balloon'

function getAnswer(question)
{
    //todo switch case
    if (question.type == 'plus')
    {
        return (question.q1 + question.q2)
    }
    else if (question.type == 'min')
    {
        return (question.q1 - question.q2)
    }
    if (question.type == 'mul')
    {
        return (question.q1 * question.q2)
    }
    if (question.type == 'div')
    {
        return (question.q1 / question.q2)
    }
}

function generateAnswers(question) {
    const correctIndex = Math.floor(Math.random() * 5);

    const answersReturn = []

    const fakeAnswersSet = new Set(); //set so no duplicate answers

    while (fakeAnswersSet.size < 5) {
        if (question.type == 'div')
        {
            //only want possible answers under 11, obviously
            fakeAnswersSet.add(Math.floor(Math.random() * 9) + 1);
        }
        else
        {
            fakeAnswersSet.add(Math.floor(Math.random() * 99) + 1);
        }
    }

    fakeAnswersSet.forEach(fakeAnswer => { answersReturn.push(fakeAnswer) })

    if (!fakeAnswersSet.has(getAnswer(question)))
    {
        answersReturn[correctIndex] = getAnswer(question);
    }

    return answersReturn;
    //todo deel support
}

const pickGameMode = {};
pickGameMode['mul'] = ['mul']
pickGameMode['div'] = ['div']
pickGameMode['muldiv'] = ['mul', 'div']
pickGameMode['plus'] = ['plus']
pickGameMode['min'] = ['min']
pickGameMode['plusmin'] = ['plus', 'min']
pickGameMode['muldivplusmin'] = ['mul', 'div', 'plus', 'min']

const pickQuestionTypeSymbol = {};
pickQuestionTypeSymbol['mul'] = ['X']
pickQuestionTypeSymbol['div'] = [':']
pickQuestionTypeSymbol['plus'] = ['+']
pickQuestionTypeSymbol['min'] = ['-']


export default function Game({ goBack, gameMode, allowedArray }) {
    const [sigmoidX, setSigmoidX] = useState(1.75);
    const [speed, setSpeed] = useState(updateSpeed());
    const [answers, setAnswers] = useState([0, 0, 0, 0, 0]);
    const [score, setScore] = useState(0);
    const [gameID, setGameID] = useState(0);
    const [lives, setLives] = useState(5);
    const [question, setQuestion] = useState({ q1: null, q2: null, type: 'mul' })

    let allowedNumbers = [];
    for (let i = 0; i < 10; i++)
    {
        if (allowedArray[i])
        {
            allowedNumbers.push(i + 1);
        }
    }

    //bogus data

    function generateQuestion() {
        let q1 = 0;
        let q2 = 0;
        const questionType = pickGameMode[gameMode][Math.floor(Math.random() * pickGameMode[gameMode].length)]
        if (questionType == 'div')
        {
            const result = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q2 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q1 = result * q2;
        }
        else if (questionType == 'min')
        {
            //left number must always be bigger than right number
            q1 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q2 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q1 = Math.max(q1,q2)
            q2 = Math.min(q1, q2)
        }
        else if (questionType == 'mul')
        {
            q1 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q2 = Math.ceil(Math.random() * 10);
        }
        else if (questionType == 'plus')
        {
            q1 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
            q2 = allowedNumbers[Math.floor(Math.random() * allowedNumbers.length)];
        }
        const returnQuestion = { q1: q1, q2: q2, type: questionType };
        if (JSON.stringify(question) === JSON.stringify(returnQuestion)) //apparently beste manier om JSON arrays te comparen
        {
            return generateQuestion();
        }
        return returnQuestion;
    }


    function check(answer) {
        if (answer == getAnswer(question)) {
            onCorrect();
        }
        else {
            onIncorrect();
        }
    }

    function sigmoid(x)
    {
        return (1 / (1 + Math.exp(-x)))
    }

    useEffect(() => {
        setAnswers(generateAnswers(question));
    }, [question])

    function updateSpeed()
    {
        console.log((sigmoid(sigmoidX) * 30) + 5)
        return ((sigmoid(sigmoidX) * 30) + 5)
    }

    useEffect(() => {
        setSpeed(updateSpeed());
        setSigmoidX(old => old - 0.05);
    }, [score])

    useEffect(() => {
        const balloonsTooFarCheck = setTimeout(() => {
            onIncorrect();
        }, speed * 450)
        return () => { clearTimeout(balloonsTooFarCheck) }
    }, [gameID])

    function onGameOver() {
        alert(`Je score was ${score}. Goed gedaan!`)
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
                goBack();
                return 0;
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
            <p className='absolute text-[#0097fd] select-none font-semibold text-[18rem] -translate-y-[50%] w-full text-center mt-[45vh]'>{question.q1} {pickQuestionTypeSymbol[question.type]} {question.q2}</p>
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
