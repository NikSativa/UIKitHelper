#if canImport(SwiftUI)
import SwiftUI

public extension View {
    @ViewBuilder
    func `if`(_ condition: Bool,
              content: (Self) -> some View,
              else elseContent: ((Self) -> some View)? = nil) -> some View {
        if condition {
            content(self)
        } else if let elseContent {
            elseContent(self)
        } else {
            self
        }
    }

    @ViewBuilder
    func `if`(_ condition: Bool,
              content: (Self) -> some View) -> some View {
        if condition {
            content(self)
        } else {
            self
        }
    }

    @ViewBuilder
    func iflet<T>(_ t: T?,
                  content: (Self, T) -> some View) -> some View {
        if let t {
            content(self, t)
        } else {
            self
        }
    }
}
#endif
