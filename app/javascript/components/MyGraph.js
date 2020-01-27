import React from "react"
import PropTypes from "prop-types"
import Chart from 'react-google-charts'

class MyGraph extends React.Component {
  render () {
    return (
      <React.Fragment>
		<div class="row d-flex justify-content-center text-center">
			<Chart
			  width={'800px'}
			  height={'400px'}
			  chartType="PieChart"
			  loader={<div>Loading Chart</div>}
			  data={[
			    ['Pizza', 'Popularity'],
			    ['Pepperoni', 33],
			    ['Hawaiian', 26],
			    ['Mushroom', 22],
			    ['Sausage', 10],
			    ['Anchovies', 9],
			  ]}
			  options={{
			    title: 'Number of times words were mentioned:',
			    sliceVisibilityThreshold: 0,
			  }}
			  rootProps={{ 'data-testid': '7' }}
			/>
		</div>
      </React.Fragment>
    );
  }
}

MyGraph.propTypes = {
  greeting: PropTypes.string
};
export default MyGraph
