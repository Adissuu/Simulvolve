import React, { useRef, useEffect, useState, useCallback } from 'react';
import PauseResumeButton from '../Statistics/PauseResumeButton';

type Props = {
    simulation: any;
};

const Screen = ({ simulation }: Props) => {
    const canvasRef = useRef<HTMLCanvasElement | null>(null);
    const [gamePaused, setGamePaused] = useState(false);
    const gamePausedRef = useRef(gamePaused);

    const FRAME_DELAY = 50;
    const GENERATIONS_TRAIN = 80;
    const FITNESS_UNITS = 10000;

    const redraw = useCallback(() => {
        let games = simulation.games();
        const canvas = canvasRef.current;
        let ctxt: CanvasRenderingContext2D | null
        if (!canvas) { return }

        ctxt = canvas.getContext('2d');
        if (ctxt) {
            ctxt.clearRect(0, 0, canvas.width, canvas.height);
        }

        simulation.step();

        // Draw snake
        const snake = games[0].snake;
        if (ctxt == null) { return; }

        ctxt.fillStyle = 'rgb(255, 255, 255)';
        const side_w = canvas.width / width;
        const side_h = canvas.height / height;


        for (const element of snake) {
            const x = element[0];
            const y = element[1];

            const size_ratio = 0.9;
            ctxt.fillRect(
                x * side_w + side_w * (1 - size_ratio) / 2,
                y * side_h + side_h * (1 - size_ratio) / 2,
                side_w * size_ratio,
                side_h * size_ratio
            );
        }

        // Draw eyes
        const direction = games[0].direction;
        ctxt.fillStyle = 'rgb(0, 0, 0)';

        const x0 = snake[0][0];
        const y0 = snake[0][1];

        if (direction == 0) {
            // eyes on the right
            ctxt.fillRect(x0 * side_w + side_w * 0.6, y0 * side_h + side_w * 0.1, side_w * 0.3, side_h * 0.3);
            ctxt.fillRect(x0 * side_w + side_w * 0.6, y0 * side_h + side_w * 0.6, side_w * 0.3, side_h * 0.3);
        }
        else if (direction == 1) {
            // eyes down
            ctxt.fillRect(x0 * side_w + side_w * 0.1, y0 * side_h + side_w * 0.5, side_w * 0.3, side_h * 0.3);
            ctxt.fillRect(x0 * side_w + side_w * 0.6, y0 * side_h + side_w * 0.5, side_w * 0.3, side_h * 0.3);
        }
        else if (direction == 2) {
            // eyes on the left
            ctxt.fillRect(x0 * side_w + side_w * 0.1, y0 * side_h + side_w * 0.1, side_w * 0.3, side_h * 0.3);
            ctxt.fillRect(x0 * side_w + side_w * 0.1, y0 * side_h + side_w * 0.6, side_w * 0.3, side_h * 0.3);
        }
        else if (direction == 3) {
            // eyes up
            ctxt.fillRect(x0 * side_w + side_w * 0.1, y0 * side_h + side_w * 0.1, side_w * 0.3, side_h * 0.3);
            ctxt.fillRect(x0 * side_w + side_w * 0.6, y0 * side_h + side_w * 0.1, side_w * 0.3, side_h * 0.3);
        }

        // Draw apple
        const apple = games[0].apple;

        ctxt.fillStyle = 'rgb(255, 0, 0)';
        ctxt.beginPath();
        ctxt.roundRect(apple[0] * side_w, apple[1] * side_h, side_w, side_h, side_w * 0.1);
        ctxt.fill();

        // Update the labels
        console.log("Generation: " + simulation.generation());
        // console.log("Best Score (gen.): " + simulation.best_score());

        // console.log("Min. Fitness: " + Math.round(simulation.min_fitness() / FITNESS_UNITS));
        // console.log("Max. Fitness: " + Math.round(simulation.max_fitness() / FITNESS_UNITS));
        // console.log("Average Fitness: " + Math.round(simulation.avg_fitness() / FITNESS_UNITS));


        if (!gamePausedRef.current) {
            setTimeout(function () { requestAnimationFrame(redraw) }, FRAME_DELAY);
        }
    }, [simulation, gamePausedRef]);

    useEffect(() => {
        const viewport = canvasRef.current;

        if (!viewport) { return; }

        const updateViewportSize = () => {
            const viewportScale = window.devicePixelRatio || 1;
            const size = Math.min(window.innerWidth, window.innerHeight) * viewportScale;

            viewport.width = size;
            viewport.height = size;
            viewport.style.width = (size - (size * 0.1)) / viewportScale + 'px';
            viewport.style.height = (size - (size * 0.1)) / viewportScale + 'px';

            redraw();
        };

        window.addEventListener('resize', updateViewportSize);
        updateViewportSize();

        return () => window.removeEventListener('resize', updateViewportSize);
    }, [redraw]);

    const games_list = simulation.games();
    const width = games_list[0].width;
    const height = games_list[0].height;

    return (
        <div className="text-xl text-blue-500 flex justify-center items-center ">
            <div className="flex flex-col mr-12">
                <PauseResumeButton gamePaused={gamePaused} setGamePaused={setGamePaused} gamePausedRef={gamePausedRef} redraw={redraw} />
            </div>
            <canvas ref={canvasRef} width="700" height="700" className="rounded border-2 border-blue-500" />
        </div>
    );
};

export default Screen;
