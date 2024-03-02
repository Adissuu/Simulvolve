import { useContext } from "react"
import { WASMContext } from "../context/WASM"
import { Screen } from "./game/Screen"

export const SimulvolveWindow = () => {
  const ctx = useContext(WASMContext)
  if (!ctx.wasm) {
    return <>...</>
  }

  const simulation = new ctx.wasm.Games();
  const animals = simulation.games;
  console.log(animals)

  return (
    <div className="">
      <h1 className="text-4xl text-center">Simulvolve</h1>
      <Screen simulation={simulation} />
    </div>
  )
}
