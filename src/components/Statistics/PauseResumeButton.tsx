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
        <button onClick={handleClick}>
            {gamePaused ? "Resume" : "Pause"}
        </button>
    );
};

export default PauseResumeButton;