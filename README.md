
# react-native-icloud-file-picker

## Getting started

`$ npm install react-native-icloud-file-picker --save`

### Mostly automatic installation

`$ react-native link react-native-icloud-file-picker`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-icloud-file-picker` and add `RNIcloudFilePicker.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNIcloudFilePicker.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNIcloudFilePickerPackage;` to the imports at the top of the file
  - Add `new RNIcloudFilePickerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-icloud-file-picker'
  	project(':react-native-icloud-file-picker').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-icloud-file-picker/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-icloud-file-picker')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNIcloudFilePicker.sln` in `node_modules/react-native-icloud-file-picker/windows/RNIcloudFilePicker.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Icloud.File.Picker.RNIcloudFilePicker;` to the usings at the top of the file
  - Add `new RNIcloudFilePickerPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNIcloudFilePicker from 'react-native-icloud-file-picker';

// TODO: What to do with the module?
RNIcloudFilePicker;
```
  