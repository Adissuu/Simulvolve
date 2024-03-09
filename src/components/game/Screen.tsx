import React, { useRef, useEffect, useState } from 'react';

type Props = {
    simulation: any;
};

const Screen = ({ simulation }: Props) => {
    const canvasRef = useRef<HTMLCanvasElement | null>(null);
    const [gamePaused, setGamePaused] = useState(false);
    const gamePausedRef = useRef(gamePaused);

    const FRAME_DELAY = 0;
    const GENERATIONS_TRAIN = 80;
    const FITNESS_UNITS = 10000;

    function redraw() {
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
        const snake = games_list[0].snake;
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
        const direction = games_list[0].direction;
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
        const apple = games_list[0].apple;

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
            requestAnimationFrame(redraw);
        }
    }

    useEffect(() => {
        const viewport = canvasRef.current;

        if (!viewport) { return; }

        // Adapt the viewport scale to avoid pixelized images.
        const viewportWidth = viewport.width;
        const viewportHeight = viewport.height;

        const viewportScale = window.devicePixelRatio || 1;

        viewport.width = viewportWidth * viewportScale;
        viewport.height = viewportHeight * viewportScale;

        viewport.style.width = viewportWidth + 'px';
        viewport.style.height = viewportHeight + 'px';

        redraw()
    });

    const games_list = simulation.games();
    const width = games_list[0].width;
    const height = games_list[0].height;

    return (
        <div className="text-xl text-red-500">
            <canvas ref={canvasRef} className=" h-full w-full rounded" />
            <button onClick={() => {
                setGamePaused(prevGamePaused => {
                    gamePausedRef.current = !prevGamePaused;
                    console.log(gamePausedRef.current);
                    return !prevGamePaused;
                });
            }} >
                {gamePaused ? "Resume" : "Pause"}
            </button>
        </div>
    );
};

export default Screen;
