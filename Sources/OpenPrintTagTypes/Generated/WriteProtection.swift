// Auto-generated from OpenPrintTag spec/data/write_protection_enum.yaml
// Do not edit manually - regenerate from YAML when spec updates

import Foundation

/// Write protection level for NFC tags
public enum WriteProtection: Int, Sendable, Equatable, Codable, CaseIterable {
    /// Tag is not write protected
    case no = 0

    /// Tag is irreversibly protected against writing
    case irreversible = 1

    /// Tag is write-protected using PROTECT PAGE command (SLIX2-specific), unlockable with password
    case protectPageUnlockable = 2

    /// Human-readable display name
    public var displayName: String {
        switch self {
        case .no: return "Not Protected"
        case .irreversible: return "Irreversible Protection"
        case .protectPageUnlockable: return "Unlockable Protection"
        }
    }

    /// Detailed description
    public var description: String {
        switch self {
        case .no:
            return "The tag is not write protected."
        case .irreversible:
            return "The tag is irreversibly protected against writing."
        case .protectPageUnlockable:
            return "The tag is write-protected using the `PROTECT PAGE` command (SLIX2-specific) and is unlockable with a password that is located somewhere on the container."
        }
    }

    /// Whether the tag can be written to
    public var isWritable: Bool {
        self == .no
    }

    /// Whether the protection can be unlocked
    public var isUnlockable: Bool {
        self == .protectPageUnlockable
    }
}
