import Head from 'next/head'
import { useEffect, useState } from 'react'
import Balloon from '../components/Balloon'
import Game from '../components/Game'

const allowedTafels = [1, 2, 3, 4, 5, 6, 7, 8, 9]

function generateQuestion()
{
  const q1 = allowedTafels[Math.floor(Math.random() * allowedTafels.length)];
  const q2 = allowedTafels[Math.floor(Math.random() * allowedTafels.length)];
  return {q1: q1, q2: q2, type: 'mul'}
}

export default function Home() {
  const [score, setScore] = useState(0);
  const [gameID, setGameID] = useState(0);
  const [lives, setLives] = useState(5);
  const [question, setQuestion] = useState({q1: null, q2: null, type: 'mul' })

  function onGameOver()
  {
    alert('dood!')
  }

  function onCorrect()
  {
    new Audio("/sounds/1_goed.mp3").play()
    setQuestion(generateQuestion());
    setGameID(id => id+1);
    setScore(score => score + 10);
  }

  function onIncorrect()
  {
    new Audio("/sounds/2_fout.mp3").play()
    setQuestion(generateQuestion());
    setGameID(id => id+1);
    setLives(lives => {
      if (lives <= 1)
      {
        onGameOver()
      }
      return lives - 1;
    })
  }

  useEffect(() => {
    setQuestion(generateQuestion())
  }
  ,[])

  return (<>
    <Head>
      <title>Onlineklas</title>
      <link rel="icon" href="/img/green_balloon.png" />
    </Head>
    <div className='absolute select-none bottom-0  right-0 flex gap-0'>
    {[...Array(lives)].map((e, i) => <img className='min-h-[4rem]' src="img/hp.png"  key={i}/>)}
    </div>
    <p className='absolute select-none text-white font-semibold text-4xl ml-2 mb-2 left-0 bottom-0'>Score: {score}</p>
    <div className='min-h-screen max-h-screen h-full bg-[#0033ff] w-full'>
      <Game score={score} gameID={gameID} onIncorrect={onIncorrect} onCorrect={onCorrect} question={question} />
    </div>
  </>




  )
}
