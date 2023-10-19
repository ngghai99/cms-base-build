import React from 'react'

export default function LatestArticles() {
  return (
    <>
      <div className="col-12">
        <h2 className="section-title">Latest Articles</h2>
      </div>
      <div className="col-lg-8 mb-5 mb-lg-0">
        <div className="row">
          {/* latest */}
          <div className="col-12 mb-4">
            <article className="card article-card">
              <a href="article.html">
                <div className="card-image">
                  <div className="post-info">
                    {" "}
                    <span className="text-uppercase">04 Jun 2021</span>
                    <span className="text-uppercase">3 minutes read</span>
                  </div>
                  <img
                    loading="lazy"
                    decoding="async"
                    src="images/post/post-1.jpg"
                    alt="Post Thumbnail"
                    className="w-100"
                  />
                </div>
              </a>
              <div className="card-body px-0 pb-1">
                <ul className="post-meta mb-2">
                  <li>
                    {" "}
                    <a href="#!">travel</a>
                    <a href="#!">news</a>
                  </li>
                </ul>
                <h2 className="h1">
                  <a className="post-title" href="article.html">
                    Is it Ethical to Travel Now? With that Freedom Comes
                    Responsibility.
                  </a>
                </h2>
                <p className="card-text">
                  Heading Here is example of hedings. You can use this
                  heading by following markdownify rules. For example: use #
                  for heading 1 and use ###### for heading 6.
                </p>
                <div className="content">
                  {" "}
                  <a className="read-more-btn" href="article.html">
                    Read Full Article
                  </a>
                </div>
              </div>
            </article>
          </div>
          {/* latest */}
          <div className="col-md-6 mb-4">
            <article className="card article-card article-card-sm h-100">
              <a href="article.html">
                <div className="card-image">
                  <div className="post-info">
                    {" "}
                    <span className="text-uppercase">03 Jun 2021</span>
                    <span className="text-uppercase">2 minutes read</span>
                  </div>
                  <img
                    loading="lazy"
                    decoding="async"
                    src="images/post/post-2.jpg"
                    alt="Post Thumbnail"
                    className="w-100"
                  />
                </div>
              </a>
              <div className="card-body px-0 pb-0">
                <ul className="post-meta mb-2">
                  <li>
                    {" "}
                    <a href="#!">travel</a>
                  </li>
                </ul>
                <h2>
                  <a className="post-title" href="article.html">
                    An Experiential Guide to Explore This Kingdom
                  </a>
                </h2>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  …
                </p>
                <div className="content">
                  {" "}
                  <a className="read-more-btn" href="article.html">
                    Read Full Article
                  </a>
                </div>
              </div>
            </article>
          </div>
          <div className="col-md-6 mb-4">
            <article className="card article-card article-card-sm h-100">
              <a href="article.html">
                <div className="card-image">
                  <div className="post-info">
                    {" "}
                    <span className="text-uppercase">02 Jun 2021</span>
                    <span className="text-uppercase">2 minutes read</span>
                  </div>
                  <img
                    loading="lazy"
                    decoding="async"
                    src="images/post/ls-2.jpg"
                    alt="Post Thumbnail"
                    className="w-100"
                  />
                </div>
              </a>
              <div className="card-body px-0 pb-0">
                <ul className="post-meta mb-2">
                  <li>
                    {" "}
                    <a href="#!">lifestyle</a>
                  </li>
                </ul>
                <h2>
                  <a className="post-title" href="article.html">
                    What to Do in Houston: Ideas for Your Visit
                  </a>
                </h2>
                <p className="card-text">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                  sed do eiusmod tempor incididunt ut labore et dolore magna
                  …
                </p>
                <div className="content">
                  {" "}
                  <a className="read-more-btn" href="article.html">
                    Read Full Article
                  </a>
                </div>
              </div>
            </article>
          </div>
          {/* page */}
          <div className="col-12">
            <div className="row">
              <div className="col-12">
                <nav className="mt-4">
                  {/* pagination */}
                  <nav className="mb-md-50">
                    <ul className="pagination justify-content-center">
                      <li className="page-item">
                        <a
                          className="page-link"
                          href="#!"
                          aria-label="Pagination Arrow"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width={26}
                            height={26}
                            fill="currentColor"
                            viewBox="0 0 16 16"
                          >
                            <path
                              fillRule="evenodd"
                              d="M12 8a.5.5 0 0 1-.5.5H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5a.5.5 0 0 1 .5.5z"
                            />
                          </svg>
                        </a>
                      </li>
                      <li className="page-item active ">
                        {" "}
                        <a href="index.html" className="page-link">
                          1
                        </a>
                      </li>
                      <li className="page-item">
                        {" "}
                        <a href="#!" className="page-link">
                          2
                        </a>
                      </li>
                      <li className="page-item">
                        <a
                          className="page-link"
                          href="#!"
                          aria-label="Pagination Arrow"
                        >
                          <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width={26}
                            height={26}
                            fill="currentColor"
                            viewBox="0 0 16 16"
                          >
                            <path
                              fillRule="evenodd"
                              d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"
                            />
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </nav>
                </nav>
              </div>
            </div>
          </div>
          {/* page */}
        </div>
      </div>
    </>
  )
}
