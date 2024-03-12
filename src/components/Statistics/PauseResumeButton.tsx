import React, { FC, Dispatch, SetStateAction } from 'react';

interface PauseResumeButtonProps {
    gamePaused: boolean;
    setGamePaused: Dispatch<SetStateAction<boolean>>;
    gamePausedRef: React.MutableRefObject<boolean>;
    redraw: () => void;
}

const PauseResumeButton: FC<PauseResumeButtonProps> = ({ gamePaused, setGamePaused, gamePausedRef, redraw }) => {
    const handleClick = () => {
        setGamePaused(prevGamePaused => {
            const nextGamePaused = !prevGamePaused;
            gamePausedRef.current = nextGamePaused;
            console.log(gamePausedRef.current);
            if (!nextGamePaused) {
                redraw();
            }
            return nextGamePaused;
        });
    };

    return (
        <button onClick={handleClick} className='border border-blue-500 px-2 py-1 rounded-lg hover:bg-blue-500 hover:text-white'>
            {gamePaused ? "Resume" : "Pause"}
        </button>
    );
};

export default PauseResumeButton;