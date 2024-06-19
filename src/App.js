import "./App.css";
import AppProvider from "./context/AppContext";
import Home from "./components/Home";

function App() {
  return (
    <AppProvider>
      <div className="App">
        <Home />
        <h1>Hello Frontend</h1>
      </div>
      ;
    </AppProvider>
  );
}

export default App;
