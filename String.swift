//
//  String.swift
//  ExtensionKit
//
//  Created by Roger Molas on 3/26/20.
//

import Foundation

extension String {
	
	/// Render HTML
	var htmlToAttributedString: NSAttributedString? {
		guard let data = data(using: .utf8) else { return NSAttributedString() }
		
		let options = [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue]
		
		do {
			return try NSAttributedString(data: data, options: options, documentAttributes: nil)
		} catch {
			return NSAttributedString()
		}
	}
	
	var htmlToString: String {
		return htmlToAttributedString?.string ?? ""
	}
}
