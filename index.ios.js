
import { NativeModules } from 'react-native';

const { RNIcloudFilePicker } = NativeModules;

export default {
  showFilePicker: function(callback) {
    RNIcloudFilePicker.showFilePicker(function(result) {
      let { success, data, filename } = result

      if (!success) { return }

      let nameParts = filename.split('/')
      let name = decodeURIComponent(nameParts[nameParts.length - 1])

      callback(name, data)
    })
  }
};
