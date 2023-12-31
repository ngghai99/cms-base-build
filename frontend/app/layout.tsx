import './globals.css'
import { Inter } from 'next/font/google'
import { Header } from '@/components'
import 'bootstrap-icons/font/bootstrap-icons.css'

const inter = Inter({ subsets: ['latin'] })

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <Header />
      <body suppressHydrationWarning={true} className={`${inter.className} section-banner`}>{children}</body>
    </html>
  )
}
