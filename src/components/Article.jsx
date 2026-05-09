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
