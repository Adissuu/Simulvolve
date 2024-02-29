import { useContext } from "react"

import { WASMContext } from "../context/WASM"

export const SimulvolveWindow = () => {
  const ctx = useContext(WASMContext)
  if (!ctx.wasm) {
    return <>...</>
  }

  const simulation = new ctx.wasm.Simulation();
  const animals = simulation.world().animals;
  console.log(animals)

  return <p className="text-xl text-red-500">
    hello
  </p>
}
