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
