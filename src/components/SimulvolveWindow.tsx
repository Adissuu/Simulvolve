import { useContext } from "react"
import { WASMContext } from "../context/WASM"
import { Screen } from "./game/Screen"

export const SimulvolveWindow = () => {
  const ctx = useContext(WASMContext)
  if (!ctx.wasm) {
    return <>...</>
  }

  const simulation = new ctx.wasm.Simulation();
  const animals = simulation.world().animals;
  console.log(animals)

  return (
    <Screen simulation={simulation} />
  )
}
