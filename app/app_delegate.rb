class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
    @manager = ::CBPeripheralManager.alloc.initWithDelegate(self, queue:nil)
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end

  def peripheralManagerDidUpdateState peripheral
    p({
      CBPeripheralManagerStateUnknown      => "CBPeripheralManagerStateUnknown",
      CBPeripheralManagerStateResetting    => "CBPeripheralManagerStateResetting",
      CBPeripheralManagerStateUnsupported  => "CBPeripheralManagerStateUnsupported",
      CBPeripheralManagerStateUnauthorized => "CBPeripheralManagerStateUnauthorized",
      CBPeripheralManagerStatePoweredOff   => "CBPeripheralManagerStatePoweredOff",
      CBPeripheralManagerStatePoweredOn    => "CBPeripheralManagerStatePoweredOn",
    }[peripheral.state])
  end
end
