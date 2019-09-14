- Define component
```
class Button extends React.component {
  return(){
    <button Onclick={()=>{alert('hi')}}>
      {this.props.value}
    </button>
  }
}
```
- Pass value to components
```
  <Button value={input} />
```
and then
```
class Button extends React.component {
  constructor(props){
    super(props);
    this.value = props.value;
  }
}
```

- States
```
  ...
  constructor(){
    super(props)
    this.state = {value: props.value}
  }
```
- How to set or update state? `setState({value: newVale})`
- Pass onClick action to child `<Child onClick={() => this.onClickFunction()} />` 
