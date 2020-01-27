import React from 'react'
import DataTable from 'react-data-table-component'

const data = [{ id: 1, title: 'Conan the Barbarian', year: '1982' }];
const columns = [
  {
    name: 'Word',
    selector: 'title',
    sortable: true,
    center: true
  },
  {
    name: 'Count',
    selector: 'year',
    sortable: true,
    center: true
  },
];

class MyTable extends React.Component {
	render () {
		return (
			<div class="text-right">
		      <DataTable
		        title="Word Count Table"
		        columns={columns}
		        data={data}
		      />
			</div>
		)
	}
}

export default MyTable