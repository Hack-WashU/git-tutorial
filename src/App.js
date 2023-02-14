import logo from './logo.jpg';
import './App.css';
import Name from './components/Names.js'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} id="logo" alt="logo" />
        <p>
          This website was made by the following Hack WashU members:
        </p>
        <Name />
        </header>
    </div>
  );
}

export default App;
