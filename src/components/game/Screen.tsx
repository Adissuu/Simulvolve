import React, { useRef, useEffect } from 'react';

type Props = {
    simulation: any;
};

const Screen = ({ simulation }: Props) => {
    const canvasRef = useRef<HTMLCanvasElement | null>(null);

    useEffect(() => {
        const canvas = canvasRef.current;
        if (canvas) {
            const context = canvas.getContext('2d');

            // Example: Draw a red rectangle
            context.fillStyle = 'red';
            context.fillRect(10, 10, 100, 50);
        }
    }, []);

    const games_list = simulation.games();
    const width = games_list[0].width;
    const height = games_list[0].height;

    return (
        <div className="text-xl text-red-500">
            <canvas ref={canvasRef} className="bg-red-500 h-full w-full rounded" />
        </div>
    );
};

export default Screen;
