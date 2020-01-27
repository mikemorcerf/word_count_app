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
			  data={
				this.props.generated_data
			  }
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
  generated_data: PropTypes.any
};
export default MyGraph