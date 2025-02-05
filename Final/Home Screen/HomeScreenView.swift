//
//  HomeScreenView.swift
//  Final
//
//  Created by Eva H on 11/21/24.
//

import UIKit

class HomeScreenView: UIView {
    
    // Welcome Label
    var welcomeLabel = UILabel()
    
    // Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        // Set up the welcome label
        setupWelcomeLabel()
        
        // Initialize constraints
        initConstraints()
    }
    
    // Function to set up the welcome label
    private func setupWelcomeLabel() {
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 24) // Customize font size and make it bold
        welcomeLabel.textColor = .black // Customize text color
        welcomeLabel.textAlignment = .center // Center align the text
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout
        welcomeLabel.text = "Welcome to FileLife" // Set default text
        self.addSubview(welcomeLabel)
    }
    
    
    // Set up constraints
    private func initConstraints() {
        NSLayoutConstraint.activate([
            // Center the label horizontally in the view
            welcomeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            // Position the label closer to the top of the screen
            welcomeLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5) // Reduced padding
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
