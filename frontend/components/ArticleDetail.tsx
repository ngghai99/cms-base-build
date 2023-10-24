"use client"
import React, { useEffect, useState } from 'react';
import api from '../utils/api';

export default function ArticleDetail({ArticleId}) {
  const [article, setArticle] = useState([]);

  const formatDate = (dateString) => {
    const date = new Date(dateString.created_at)

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

  return (
    <>
      <div className="col-lg-8 mb-5 mb-lg-0">
        <h1>
          {article.title}
        </h1>
        <p>
          { formatDate(article) }
        </p>
        <div className='small-text-description' dangerouslySetInnerHTML={{ __html: article.content }}>
        </div>
      </div>
    </>
  )
}

