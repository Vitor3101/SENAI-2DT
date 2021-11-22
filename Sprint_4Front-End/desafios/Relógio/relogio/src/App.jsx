import './App.css';
import React from 'react';

function HorarioSpan(props) {
  return <span> Horário: {props.date.toLocaleTimeString()} </span>
}


class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      date: new Date()
    }
  }

  componentDidMount() {
    this.idRelogio = setInterval(() => {
      this.tick()
    }, 1000);
    console.log(`O id do Relógio foi mudado para o id:` + this.idRelogio);
  }

  componentWillUnmount() {
    clearInterval(this.idRelogio);
  }

  tick() {
    this.setState({
      date: new Date()
    })
  }

  Play() {
    console.log(`Relógio retomado!`);
    this.idRelogio = setInterval(() => {
      this.tick()
    }, 1000);
    console.log(`O id do Relógio mudou para o id:` + this.idRelogio)
  }

  Pause() {
    console.log(`Relógio ${this.idRelogio} pausado`);
    clearInterval(this.idRelogio);
  }

    render(){
      return (
        <div>
          <h1>Relógio {this.idRelogio.date}</h1>
          <HorarioSpan date={this.state.date} />
          <button className="pause" onClick={() => { this.Pause() }}>Play</button>
          <button className="play" onClick={() => { this.Play() }}>Pause</button>
        </div>
      );
    }
  }

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Clock />
        <Clock />
      </header>
    </div>
  );
}

export default App;













