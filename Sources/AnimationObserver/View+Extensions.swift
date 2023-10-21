//
//  View+Extensions.swift
//
//
//  Created by Kristóf Kálai on 2023. 06. 03..
//

import SwiftUI

extension View {
    public func observeAnimation<Value: VectorArithmetic>(for observedValue: Value, onChange: ((Value) -> Void)? = nil, onComplete: (() -> Void)? = nil) -> some View {
        modifier(AnimationObserverModifier(for: observedValue, onChange: onChange, onComplete: onComplete))
    }
}
