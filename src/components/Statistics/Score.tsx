import React from 'react'

type Props = {
    score: number;
}

const Score = ({ score }: Props) => {
    return (
        <div className='text-white'>Last gen&apos;s best score: {score}</div>
    )
}

export default Score