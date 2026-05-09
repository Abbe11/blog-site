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
