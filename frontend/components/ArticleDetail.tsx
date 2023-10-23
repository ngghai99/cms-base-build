"use client"
import React, { useEffect, useState } from 'react';
import Link from "next/link"
import api from '../utils/api';

export default function ArticleDetail({ArticleId}) {
  const [article, setArticle] = useState([]);

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
      <div class="col-lg-8 mb-5 mb-lg-0">
        <div className='small-text-description' dangerouslySetInnerHTML={{ __html: article.content }}>
        </div>
      </div>
    </>
  )
}

