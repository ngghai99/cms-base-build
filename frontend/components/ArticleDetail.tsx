"use client"
import React, { useEffect, useState } from 'react';
import api from '../utils/api';

export default function ArticleDetail({ ArticleId }: { ArticleId: number }) {
  const [article, setArticle] = useState<Article | null>(null);
  const API_URL = process.env.API_URL
  interface Article {
    image: any;
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

  return (
    <>
      {article && (
        <>
          <h2 className='text-title-article-detail'>{article.title}</h2><div className="row justify-content-center">
            <div className="col-lg-10 col-12 article-content">
              <div className='section-title-wrap mb-5'>
                <h4 className='section-title-detail'>Daily talk</h4>
              </div>
              <div className="row">
                <div className='col-lg-3 col-12'>
                  <div className='custom-block-icon-wrap'>
                    <div className='custom-block-image-wrap custom-block-image-detail-page'>
                      {article.image && <img loading="lazy" src={API_URL + article.image.url} alt="Image" decoding="async" className="w-100 author-thumb-sm d-block" />}
                    </div>
                  </div>
                </div>
                <div className='col-lg-9 col-12'>
                  <p className='create-at-show'>
                    <i className='bi-clock-fill custom-icon'></i>
                    {formatDate(article.created_at)}
                  </p>
                  <div
                    className="small-text-description"
                    dangerouslySetInnerHTML={{ __html: article.content }}
                  ></div>
                </div>
              </div>
            </div>
          </div>
        </>
      )}
    </>
  )
}

