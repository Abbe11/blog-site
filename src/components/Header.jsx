function Header({ title, author }) {
  return (
    <header className="header">
      <h1>{title}</h1>
      <p>Written by <strong>{author}</strong></p>
    </header>
  );
}
export default Header;
