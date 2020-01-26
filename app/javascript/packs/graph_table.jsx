import React from 'react'
import ReactDOM from 'react-dom'
import MyGraph from '../components/MyGraph'
import MyTable from '../components/MyTable'

ReactDOM.render(
	<MyGraph/>,
	document.getElementById('graphPlace')
)
ReactDOM.render(
	<MyTable/>,
	document.getElementById('tablePlace')
)
