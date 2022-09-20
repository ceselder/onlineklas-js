import React, { useContext, useEffect, useRef } from 'react'

export default function Balloon({ gameID, onClick, speed, color, answer }) {
    const balloonRef = useRef(null);

    useEffect(() => {
        let pos = 22;
        const interval = setInterval(() => {
            pos -= 0.25;
            balloonRef.current.style = `transform: translateY(${pos}vh);`
        }, speed)
        return () => clearInterval(interval)
    }, [gameID]) //score is literally just for balloon position refreshes

    return (
        <div onClick={onClick} className='self-end select-none hover:cursor-pointer' ref={balloonRef}>
            <p className='text-center text-black text-4xl translate-y-[6.5rem]'>{answer}</p>
            <img draggable={false} className='h-80 undraggable' src={`img/${color}_balloon.png`}></img>
        </div>

    )
}
