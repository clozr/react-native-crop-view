
# react-native-cropview

## Getting started

`$ npm install react-native-cropview --save`

### Mostly automatic installation

`$ react-native link react-native-cropview`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-cropview` and add `CropView.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libCropView.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android
**NOT SUPPORTED YET**

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.CropViewPackage;` to the imports at the top of the file
  - Add `new CropViewPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-cropview'
  	project(':react-native-cropview').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-cropview/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-cropview')
  	```

## Usage
```javascript
import CropView from 'react-native-cropview';

// TODO: What to do with the module?
CropView;
```
  
