// Models/Profile.swift
import Foundation

struct Profile: Identifiable, Equatable {
    let id: UUID
    var name: String
    var school: String
    var major: String
    var gpa: Double
    var year: String
    var avatarURL: URL?
    var photoURL: URL?
    var traits: [String]
}
