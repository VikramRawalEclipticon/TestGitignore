//
//  ViewController.swift
//  NewLogin
//
//  Created by Vikram Rawal on 12/06/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let signInLabel = UILabel()
    let logoImageView = UIImageView()
    let emailLabel = UILabel()
    let passwordLabel = UILabel()
    let emailContainerView = UIView()
    let passwordContainerView = UIView()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let signInButton = UIButton(type: .system)
    let orSignInWithLabel = UILabel()
    let googleButton = UIButton(type: .custom)
    let facebookButton = UIButton(type: .custom)
    let twitterButton = UIButton(type: .custom)
    let signUpLabel = UILabel()
    let signUpButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLogoImageView()
        setupSignInLabel()
        setupEmailLabel()
        setupEmailContainerView()
        setupPasswordLabel()
        setupPasswordContainerView()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignInButton()
        setupOrSignInWithLabel()
        setupSocialButtons()
        setupSignUpSection()
    }
    
    func setupLogoImageView() {
        logoImageView.image = UIImage(named: "logo") // Replace with your logo image
        logoImageView.contentMode = .scaleAspectFit
        view.addSubview(logoImageView)
        
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(78)
            make.width.height.equalTo(54)
        }
    }
    
    func setupSignInLabel() {
        signInLabel.text = "Sign in your account"
        signInLabel.font = UIFont.systemFont(ofSize: 27, weight: .bold)
        view.addSubview(signInLabel)
        
        signInLabel.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).offset(76)
            make.trailing.leading.equalTo(view.safeAreaLayoutGuide).offset(50)
        }
    }
    
    func setupEmailLabel() {
        emailLabel.text = "Email"
        emailLabel.font = UIFont.systemFont(ofSize: 16, weight: .light)
        view.addSubview(emailLabel)
        
        emailLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.top.equalTo(signInLabel.snp.bottom).offset(51)
        }
    }
    
    func setupEmailContainerView() {
        emailContainerView.layer.cornerRadius = 10
        emailContainerView.layer.borderWidth = 0
        emailContainerView.layer.borderColor = UIColor.lightGray.cgColor
        emailContainerView.backgroundColor = UIColor(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9568627450980393, alpha: 1)
        view.addSubview(emailContainerView)
        
        emailContainerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailLabel.snp.bottom).offset(13)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(42)
        }
    }
    
    func setupPasswordLabel() {
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .light)
        view.addSubview(passwordLabel)
        
        passwordLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.top.equalTo(emailContainerView.snp.bottom).offset(13)
        }
    }
    
    
    func setupPasswordContainerView() {
        passwordContainerView.layer.cornerRadius = 10
        passwordContainerView.layer.borderWidth = 0
        passwordContainerView.layer.borderColor = UIColor.lightGray.cgColor
        passwordContainerView.backgroundColor = UIColor(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9568627450980393, alpha: 1)
        view.addSubview(passwordContainerView)
        
        passwordContainerView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordLabel.snp.bottom).offset(13)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(42)
        }
    }
    
    func setupEmailTextField() {
        emailTextField.placeholder = "eg. vikramrawal109@gmail.com"
        emailTextField.borderStyle = .none
        emailContainerView.addSubview(emailTextField)
        
        emailTextField.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(15)
            
        }
    }
    
    func setupPasswordTextField() {
        passwordTextField.placeholder = "Type Password"
        passwordTextField.borderStyle = .none
        passwordTextField.isSecureTextEntry = true
        passwordContainerView.addSubview(passwordTextField)
        
        passwordTextField.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(15)
        }
    }
    
    func setupSignInButton() {
        signInButton.setTitle("SIGN IN", for: .normal)
        signInButton.backgroundColor = UIColor(red: 0, green: 0.6941176470588235, blue: 0.25098039215686274, alpha: 1)
        signInButton.tintColor = .white
        signInButton.layer.cornerRadius = 10
        view.addSubview(signInButton)
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordContainerView.snp.bottom).offset(37)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(41)
        }
    }
    
    func setupOrSignInWithLabel() {
        orSignInWithLabel.text = "or sign in with"
        orSignInWithLabel.textAlignment = .center
        view.addSubview(orSignInWithLabel)
        
        orSignInWithLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(signInButton.snp.bottom).offset(26)
        }
    }
    
    func setupSocialButtons() {
        let socialStackView = UIStackView(arrangedSubviews: [googleButton, facebookButton, twitterButton])
        socialStackView.axis = .horizontal
        socialStackView.distribution = .fillEqually
        socialStackView.spacing = 15
        view.addSubview(socialStackView)
        
        // Set images and clear tint color for social buttons
        googleButton.setImage(UIImage(named: "google"), for: .normal) // Replace with your Google icon
        googleButton.tintColor = .clear
        googleButton.layer.cornerRadius = 5
        googleButton.backgroundColor = UIColor(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9568627450980393, alpha: 1)
        facebookButton.setImage(UIImage(named: "facebook"), for: .normal) // Replace with your Facebook icon
        facebookButton.tintColor = .clear
        facebookButton.layer.cornerRadius = 5
        facebookButton.backgroundColor = UIColor(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9568627450980393, alpha: 1)
        twitterButton.setImage(UIImage(named: "twitter"), for: .normal) // Replace with your Twitter icon
        twitterButton.tintColor = .clear
        twitterButton.layer.cornerRadius = 5
        twitterButton.backgroundColor = UIColor(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9568627450980393, alpha: 1)
        googleButton.snp.makeConstraints { make in
            make.height.equalTo(42)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.height.equalTo(42)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.height.equalTo(42)
        }
        
        socialStackView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(orSignInWithLabel.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(50)
            make.height.equalTo(42)
        }
    }
    
    func setupSignUpSection() {
        signUpLabel.text = "Don't have an account?"
        view.addSubview(signUpLabel)
        
        signUpButton.setTitle("SIGN UP", for: .normal)
        signUpButton.setTitleColor(UIColor(red: 0, green: 0.6941176470588235, blue: 0.25098039215686274, alpha: 1), for: .normal)
        view.addSubview(signUpButton)
        
        signUpLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-40)
            make.top.equalTo(googleButton.snp.bottom).offset(30)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.leading.equalTo(signUpLabel.snp.trailing).offset(5)
            make.centerY.equalTo(signUpLabel)
        }
    }
}
