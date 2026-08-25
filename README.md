# Blog Site

A single-page blog built with **React + Vite** that renders a list of articles from a data source and lets the reader open any article to read it in full. Built to practice the core React model: a component tree, data passed down through props, and conditional rendering driven by state.

Built as a components-and-props lab for the Moringa School software engineering program.

## Features

- Article feed rendered from a data file by mapping over an array
- Click an article to view its full content; click back to return to the list
- Reusable, presentational components composed into a clear tree
- An About section describing the blog

## Built with

- React 18 - functional components and props
- Vite - dev server and production build
- Plain CSS

## Architecture

- `App.jsx` - top of the component tree; holds which article is selected and passes data down
- `Header` - site title and navigation
- `ArticleList` - maps over the article data and renders a card per article
- `Article` - renders a single article's title and body from props
- `About` - static section about the blog
- `blog.js` - the article data the tree renders

## Run locally

```bash
git clone https://github.com/Abbe11/blog-site.git
cd blog-site
npm install
npm run dev
```

Then open http://localhost:5173
