import type { NextPage } from 'next'
import Head from 'next/head'

import { SimulvolveWindow } from '../components/SimulvolveWindow'

const Home: NextPage = () => {
  return (
    <div className={''}>
      <Head>
        <title>Simulvolve</title>
        <meta name="description" content="Next.JS with WebAssembly" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={''}>
        <div className="text-red-500 px-12 h-screen overflow-hidden">
          <SimulvolveWindow />
        </div>
      </main>
    </div>
  )
}

export default Home
