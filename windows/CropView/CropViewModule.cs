using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.CropView
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class CropViewModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="CropViewModule"/>.
        /// </summary>
        internal CropViewModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "CropView";
            }
        }
    }
}
