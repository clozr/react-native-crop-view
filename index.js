/**
 * Created by Swarup on 8/1/17.
 */

import React, { Component } from 'react';
import dst from 'DebugStyle';

import ReactNative, {
	UIManager,
	View,
	NativeModules,
	processColor,
	requireNativeComponent,
} from 'react-native';

export default class CropView extends React.Component {

	static propTypes = {
		maskColor: React.PropTypes.string,
		maskBorderWidth: React.PropTypes.number,
		maskBorderColor: React.PropTypes.string,
		onCropBoxChange: React.PropTypes.func.isRequired,
	};

	static defaultProps = {
		maskColor: 'blue',
		maskBorderColor: 'red',
		maskBorderWidth: 2,
	};

	constructor(props) {
		super(props);
	}

	render() {
		let props = {...this.props};

		return (
			<CropViewNative
				ref='crop'
				{...props}
			/>
		);
	}

	getViewHandle() {
		return  ReactNative.findNodeHandle(this.refs.crop);
	}

}

const CropViewNative = requireNativeComponent('CropView', CropView);