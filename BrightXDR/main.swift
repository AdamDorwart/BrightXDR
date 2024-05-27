import Cocoa

// Initialize the NSApplication
let app = NSApplication.shared

// Initialize AppDelegate
let delegate = AppDelegate()

// Link the delegate to app
app.delegate = delegate

// Create a status item in the menu bar
let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

// Create an NSMenu
let menu = NSMenu()

// Add a Quit item to the menu
menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

// Assign the menu to the status item
statusItem.menu = menu

// Set a default system icon for the status item
if let button = statusItem.button {
    button.image = NSImage(named: NSImage.Name("NSComputer")) // Use a built-in system icon
}

// Load the Objective-C runtime and initialize the AppKit framework
_ = __NSApplicationLoad()

// Start the main event loop of the application
NSApp.run()
