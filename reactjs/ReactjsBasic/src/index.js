
import React from 'react'
import ReactDom from 'react-dom'


class Employee extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
          employees: []
        };
        
    }

    componentDidMount()
    {        
      // fetch('http://localhost:51611/api/values')
      fetch('http://192.168.20.175:8083/api/values')
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            employees: result
          });
        }
      );

    
          
  }
   
  componentDidUpdate()
  {
   
    console.log(this.state.employees);
    
  }


    render() {
        return (
            <div>
                <table>
                    <thead>
                        <tr>
                            <td>
                                ID                                
                            </td>
                            <td>
                            FirstName
                            </td>
                            <td>
                            Gender
                            </td>
                            <td>
                            LastName
                            </td>
                            <td>
                            Salary
                            </td>
                        </tr>
                    </thead>
                    <tbody>
{this.state.employees.map((res) => {
  return(
    <tr key = {res.ID}>
    <td>{res.ID}</td>
<td>{res.FirstName}</td>
<td>{res.Gender}</td>
<td>{res.LastName}</td>
<td>{res.Salary}</td>
</tr>
  );

})}
                    </tbody>
                </table>
            </div>
        )

    }
}

const element = <Employee></Employee>
ReactDom.render(element,document.getElementById('root'));
 



