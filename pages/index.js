import Head from 'next/head'
import { useEffect, useState } from 'react'
import NumberSelect from '../components/NumberSelect'
import Game from '../components/Game'


const types = [{ type: 'mul', name: 'Tafels' }, { type: 'div', name: 'Deeltafels' }, { type: 'muldiv', name: 'Tafels & Deeltafels' },
{ type: 'plus', name: 'Plus' }, { type: 'min', name: 'Min' }, { type: 'plusmin', name: 'Plus & Min' },
{ type: 'muldivplusmin', name: 'Alles' }]

export default function Home() {
  const [typeIndex, setTypeIndex] = useState(0);
  const [allowedNumbers, setAllowedNumbers] = useState([true, true, true, true, true, true, true, true, true, true]);
  const [ingame, setIngame] = useState(false);

  return (<>
    <Head>
      <title>Onlineklas</title>
      <link rel="icon" href="/img/green_balloon.png" />
    </Head>
    <div className='min-h-screen flex flex-col grow-0 justify-center max-h-screen h-full bg-gray-200 w-full'>
      {!ingame &&
        (<>
          <p className='text-center m-8 text-8xl font-semibold'>Ballonnenspel</p>
          <div className='flex flex-row justify-center'>
            <img src="/img/pink_balloon.png" className='h-fit mx-4 self-center' />
            <div className='self-center w-[36rem] text-5xl border-4 border-black'>

              <div className='text-center p-2'>
                <img onClick={() => setTypeIndex(i => (0 >= i - 1) ? (types.length - 1) : (i - 1))} className='inline-block hover:cursor-pointer rotate-180 w-12 mx-2 -translate-y-0.5' src="img/arrow.png" />
                {types[typeIndex].name}
                <img onClick={() => setTypeIndex(i => (types.length > i + 1) ? (i + 1) : (0))} className='inline-block hover:cursor-pointer w-12 mx-2 -translate-y-0.5' src="img/arrow.png" />
              </div>
              <div className='text-center w-[100%] border border-black'></div>
              <div className='text-center m-6 my-8 flex justify-between flex-row'>
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={1} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={2} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={3} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={4} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={5} />
              </div>
              <div className='text-center m-6 my-8 gap-2 flex justify-between flex-row'>
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={6} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={7} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={8} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={9} />
                <NumberSelect allowedNumbers={allowedNumbers} setAllowedNumbers={setAllowedNumbers} num={10} />
              </div>
            </div>
            <img src="/img/pink_balloon.png" className='h-fit mx-4 self-center' />
          </div>
          <p className='self-center align-middle text-center mt-8 p-4 hover:cursor-pointer hover:opacity-75 bg-pink-400 text-black select-none rounded-xl text-5xl' onClick={() => setIngame(true)}>Start!</p>
        </>)
      }


      {ingame && (<div className='min-h-screen max-h-screen h-full bg-[#0033ff] w-full'>
        <Game goBack={() => setIngame(false)} gameMode={types[typeIndex].type} allowedArray={allowedNumbers} />
      </div>)}

    </div>

  </>)
}
