import React, { useEffect, useRef } from 'react'


export default function Balloon({ speed, color, answer }) {
    let pos = 0;
    const balloonRef = useRef(null);

    useEffect(() => {
            const interval = setInterval(() => {
                pos += 0.25;
                balloonRef.current.style = `transform: translateY(-${pos}vh);`
            }, speed)
    }, [])

    return (
        <div className='self-end' ref={balloonRef}>
            <p className='text-center text-3xl translate-y-[6.5rem]'>{answer}</p>
            <img className='w-wit h-80 -mb-[20rem] hover:cursor-pointer' src={`img/${color}_balloon.png`}></img>
        </div>
        
    )
}
