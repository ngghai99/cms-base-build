import React from 'react'
import { Footer, Nav, ListLatestArticles, WidgetBlocks } from '@/components'

export default function Home() {
  return (
    <>
      <Nav />
      <main>
        <section className="section">
          <div className="container">
            <div className="row no-gutters-lg">
              <ListLatestArticles />
              <WidgetBlocks />
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  )
}
