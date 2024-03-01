
type Props = {
    simulation: any
};

export const Screen = ({ simulation }: Props) => {

    const animals = simulation.world().animals;

    function createAnimal(animal: any) {
        return
    }

    return (
        <div className="text-xl text-red-500">
            <canvas className="bg-red-500 h-full w-full rounded">
                {animals.map((animal: any, i: number) => {
                    createAnimal(animal);
                })}
            </canvas>
        </div>)
}
