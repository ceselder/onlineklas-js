import React from 'react'

export default function NumberSelect({ num, allowedNumbers, setAllowedNumbers }) {
    function toggle() {
        setAllowedNumbers(oldArray => {
            const array = [...oldArray];
            array[num - 1] = !array[num - 1]
            return array;
        })
    }

    return (
        <div onClick={toggle} className={`block hover:cursor-pointer hover:opacity-40 ${allowedNumbers[num - 1] ? '' : 'line-through'} min-w-[4rem] max-w-[4rem] text-center`}>
            {num}
        </div>
    )
}
