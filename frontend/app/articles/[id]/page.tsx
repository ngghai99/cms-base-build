"use client"
import React from 'react'
import { Footer, Nav, ArticleDetail, WidgetBlocks } from '@/components'

export default function ArticleDetails({params}: {params: { id: number }}) {
  const id: number = params.id
  return (
    <>
      <Nav />
      <main>
        <section className="section">
          <div className="container">
            <div className="row no-gutters-lg">
              <ArticleDetail ArticleId={id} />
              <WidgetBlocks />
            </div>
          </div>
        </section>
      </main>
      <Footer />
    </>
  )
}
