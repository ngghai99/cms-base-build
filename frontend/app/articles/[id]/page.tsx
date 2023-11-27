"use client"
import React from 'react'
import { Footer, Nav, ArticleDetail } from '@/components'

export default function ArticleDetails({params}: {params: { id: number }}) {
  const id: number = params.id
  return (
    <>
      <Nav />
      <main>
        <section className="section">
          <div className="container">
            <ArticleDetail ArticleId={id} />
          </div>
        </section>
      </main>
      <Footer />
    </>
  )
}
