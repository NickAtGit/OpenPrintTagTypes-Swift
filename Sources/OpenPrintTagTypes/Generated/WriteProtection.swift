// Auto-generated from OpenPrintTag spec — do not edit manually
// Regenerate: python3 Scripts/generate_types.py

import Foundation

/// Write protection levels for NFC tags
public enum WriteProtection: Int, Sendable, CaseIterable, Codable {
    case no = 0
    case irreversible = 1
    case protectPageUnlockable = 2

    public var isWritable: Bool {
        self == .no
    }

    public var isUnlockable: Bool {
        self == .protectPageUnlockable
    }
}
