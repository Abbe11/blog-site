#!/bin/bash

cat > src/components/About.jsx << 'EOF'
function About({ author, bio, image }) {
  return (
    <section className="about">
      <img src={image} alt={author} />
      <div>
        <h2>About {author}</h2>
        <p>{bio}</p>
      </div>
    </section>
  );
}
export default About;
EOF

cat > src/components/Article.jsx << 'EOF'
function Article({ title, date, content }) {
  return (
    <article className="article">
      <h3>{title}</h3>
      <p className="date">{date}</p>
      <p>{content}</p>
    </article>
  );
}
export default Article;
EOF

cat > src/components/ArticleList.jsx << 'EOF'
import Article from './Article';
function ArticleList({ articles }) {
  return (
    <section className="article-list">
      <h2>Articles</h2>
      {articles.map(article => (
        <Article
          key={article.id}
          title={article.title}
          date={article.date}
          content={article.content}
        />
      ))}
    </section>
  );
}
export default ArticleList;
EOF

cat > src/App.jsx << 'EOF'
import blog from './blog';
import Header from './components/Header';
import About from './components/About';
import ArticleList from './components/ArticleList';
import './App.css';
function App() {
  return (
    <div className="app">
      <Header title={blog.title} author={blog.author} />
      <main className="main">
        <About author={blog.author} bio={blog.bio} image={blog.image} />
        <ArticleList articles={blog.articles} />
      </main>
    </div>
  );
}
export default App;
EOF

cat > src/index.jsx << 'EOF'
import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
)
EOF

cat > src/App.css << 'EOF'
* { box-sizing: border-box; margin: 0; padding: 0; }
body { font-family: 'Georgia', serif; background: #f9f9f9; color: #333; }
.app { max-width: 800px; margin: 0 auto; padding: 20px; }
.header { background: #2c3e50; color: white; padding: 40px; text-align: center; border-radius: 8px; margin-bottom: 30px; }
.header h1 { font-size: 2.5rem; margin-bottom: 10px; }
.header p { font-size: 1rem; opacity: 0.8; }
.about { display: flex; gap: 20px; align-items: center; background: white; padding: 30px; border-radius: 8px; margin-bottom: 30px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
.about img { width: 100px; height: 100px; border-radius: 50%; object-fit: cover; }
.about h2 { margin-bottom: 10px; color: #2c3e50; }
.article-list h2 { font-size: 1.8rem; margin-bottom: 20px; color: #2c3e50; }
.article { background: white; padding: 25px; border-radius: 8px; margin-bottom: 20px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); border-left: 4px solid #2c3e50; }
.article h3 { font-size: 1.4rem; margin-bottom: 8px; color: #2c3e50; }
.article .date { font-size: 0.85rem; color: #888; margin-bottom: 12px; }
.main { padding: 0; }
@media (max-width: 600px) { .about { flex-direction: column; text-align: center; } .header h1 { font-size: 1.8rem; } }
EOF

cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>THE CYBERSEC WORLD</title>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="/src/index.jsx"></script>
  </body>
</html>
EOF

echo "All files created successfully!"
