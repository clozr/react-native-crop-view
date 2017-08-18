
# react-native-crop-view

## Getting started

`$ npm install react-native-crop-view --save`

### Mostly automatic installation

`$ react-native link react-native-crop-view`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-crop-view` and add `CropView.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libCropView.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.CropViewPackage;` to the imports at the top of the file
  - Add `new CropViewPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-crop-view'
  	project(':react-native-crop-view').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-crop-view/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-crop-view')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `CropView.sln` in `node_modules/react-native-crop-view/windows/CropView.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.CropView;` to the usings at the top of the file
  - Add `new CropViewPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import CropView from 'react-native-crop-view';

// TODO: What to do with the module?
CropView;
```
  