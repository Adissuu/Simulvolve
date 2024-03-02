
type Props = {
    simulation: any
};

export const Screen = ({ simulation }: Props) => {

    console.log(simulation)

    return (
        <div className="text-xl text-red-500">
            <canvas className="bg-red-500 h-full w-full rounded">

            </canvas>
        </div>)
}
