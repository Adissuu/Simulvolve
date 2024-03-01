import type { NextPage } from 'next'
import Head from 'next/head'

import { SimulvolveWindow } from '../components/SimulvolveWindow'

const Home: NextPage = () => {
  return (
    <div className={''}>
      <Head>
        <title>Simulvolve</title>
        <link rel="stylesheet" href="./styles.css"></link>
        <meta name="description" content="Next.JS with WebAssembly" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={''}>
        <div className="text-red-500">
          <h1 className="text-4xl text-center">Simulvolve</h1>
          <SimulvolveWindow />
        </div>
      </main>
    </div>
  )
}

export default Home
