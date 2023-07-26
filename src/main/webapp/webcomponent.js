//start of login icon web-component
class LoginIcon extends HTMLElement{
connectedCallback(){
		this.innerHTML = `
		
		<a href="login.html">
			<image src ="images/icons8-login-64.png">
		</a><br>
			Login
		`;
	}
}
customElements.define("login-icon" ,LoginIcon);
//end of login icon web-component

//start of login button web-component
class LoginButton extends HTMLElement{
	connectedCallback(){
		//edit action
		this.innerHTML = `
			<input type="submit" name="todo" value ='login'>
		
		`;
	}
}
customElements.define("login-button",LoginButton);
//end of login button web-component

//start of register icon web-component
class RegisterButton extends HTMLElement{
	connectedCallback(){
		this.innerHTML = `
		<input type="submit" name = "todo" value ='register'>
		`;
	}
}
customElements.define("register-button" , RegisterButton);
//end of register web-component