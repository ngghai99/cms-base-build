"use client"
import React, { useEffect, useState } from 'react';
import api from '../utils/api';

export default function ArticleDetail({ ArticleId }: { ArticleId: number }) {
  const [article, setArticle] = useState<Article | null>(null);

  interface Article {
    title: string;
    created_at: string
    content: string
  }


  const formatDate = (dateString:string | undefined ) => {
    if (!dateString) {
      return '';
    }
    const date = new Date(dateString)

    const day = date.toLocaleString('en-us', { weekday: 'long' });
    const month = date.toLocaleString('en-us', { month: 'short' });
    const dayOfMonth = date.getDate();
    const year = date.getFullYear();
    const formatted = `${day} ,${month} ${dayOfMonth}, ${year}`;
    return formatted
  }

  useEffect(() => {
    async function fetchData() {
      try {
        const response = await api.get(`/articles/${ArticleId}`);
        setArticle(response.data);
      } catch (error) {
        console.error(error);
      }
    }
    fetchData();
  }, []);

  console.log(article)
  return (
    <>
      <div className="col-lg-8 mb-5 mb-lg-0">
        {article && (
            <>
              <h1>{article.title}</h1>
              <p>{formatDate(article.created_at)}</p>
              <div
                className="small-text-description"
                dangerouslySetInnerHTML={{ __html: article.content }}
              ></div>
            </>
          )}
      </div>
    </>
  )
}

