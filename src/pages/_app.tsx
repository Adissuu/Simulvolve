import "../styles/globals.css";
import type { AppProps } from 'next/app'
import { ThemeProvider } from 'next-themes'
import { WASMContextProvider } from '../context/WASM'

const App = ({ Component, pageProps }: AppProps) => {
  return (
    <ThemeProvider attribute="class" defaultTheme="dark">
      <WASMContextProvider>
        <Component {...pageProps} />
      </WASMContextProvider>
    </ThemeProvider>
  )
}

export default App
