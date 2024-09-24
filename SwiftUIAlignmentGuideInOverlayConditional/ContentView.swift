//
//  ContentView.swift
//  SwiftUIAlignmentGuideInOverlayConditional
//
//  Created by Simon Nickel on 23.09.24.
//

import SwiftUI

struct ContentView: View {

	var body: some View {
		VStack(spacing: 50) {

			// Not working
			content
				.overlay(alignment: .top) {
					if true { // This line causes .alignmentGuide() to fail
						Text("Test")
							.background(Color.orange)
							.alignmentGuide(.top, computeValue: { dimension in
								dimension[.bottom]
							})
					}
				}

			// Working
			content
				.overlay(alignment: .top) {
					Text("Test")
						.background(Color.orange)
						.alignmentGuide(.top, computeValue: { dimension in
							dimension[.bottom]
						})
				}
			
		}
		.padding()
	}

	private var content: some View {
		VStack(alignment: .leading) {
			Text("Hello, world!")
			Text("Hello, world!")
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.background(Color.green)
	}

}

#Preview {
	ContentView()
}
