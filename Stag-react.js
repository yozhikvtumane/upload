import React from "react";
import ReactDOM from "react-dom";

import "./styles.css";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isLoaded: false,
      error: null
    };
  }

  componentDidMount() {
    fetch(
      "https://raw.githubusercontent.com/yozhikvtumane/upload/master/student.json"
    )
      .then(response => response.json())
      .then(result => {
        this.setState({
          isLoaded: true,
          data: result
        });
      })
      .catch(err => console.log(err));
  }

  render() {
    if (!this.state.isLoaded) {
      return (
        <div className="App">
          <h1>STAG React</h1>
          <hr />
          <h3>Loading...</h3>
        </div>
      );
    } else {
      return (
        <div className="App">
          <h1>STAG React</h1>
          <hr />
          <h3>Student: {this.state.data.student.name} {this.state.data.student.surname}</h3>
        </div>
      );
    }
  }
}

const rootElement = document.getElementById("root");
ReactDOM.render(<App />, rootElement);
