import React from 'react'
import PropTypes from "prop-types"
import DataTable from 'react-data-table-component'

const data = [{ id: 1, title: 'Conan the Barbarian', year: '1982' }];
const columns = [
  {
    name: 'Word',
    selector: 'word',
    sortable: true,
    center: true
  },
  {
    name: 'Count',
    selector: 'word_count',
    sortable: true,
    center: true
  },
  {
    name: 'Created at',
    selector: 'created_at',
    sortable: true,
    center: true
  }
];

class MyTable extends React.Component {
	render () {
		return (
			<React.Fragment>
				<div class="text-right">
			      <DataTable
			        title="Word Count Table"
			        columns={columns}
			        data={this.props.generated_data}
			      />
				</div>
			</React.Fragment>
		);
	}
}

MyTable.propTypes = {
  generated_data: PropTypes.any
};
export default MyTable