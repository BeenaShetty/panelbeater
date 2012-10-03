  WHM 
       WebHost Manager (WHM) is a web-based tool used by server administrators and resellers to manage hosting accounts on a web server.
       WHM listens on ports 2086 and 2087 by default.

   cPanel
      cPanel is a Unix based web hosting control panel that provides a graphical interface and automation tools designed to simplify the process of hosting a web site. cPanel utilizes a 3 tier structure that provides functionality for administrators, resellers, and end-user website owners to control the various aspects of website and server administration through a standard web browser.
     cPanel is commonly accessed on port 2082, with an SSL-secured server operating on port 2083.

  Use cpanel and Whm API's in Rails
        Panelbeater gem  is used for communicating with the cPanel and WHM API's.
        Ruby library for the WHM & cPanel API.
     
  Install
      require 'panelbeater'
      In the model where you want to use.


 Usage
Create a server object and connect to WHM using your host and hash:

 server = Panelbeater::Whm::Commands.new(
                           :url => url,
                           :api_key => secure_hash,
                           :port => port,
                           :user => username
                        )

Now,you can access the modules of WHM by calling server.<module>


Account Example
   1. Creating a new account
      It  requires only a username, domain

   result = server.createacct(
                  :username => 'newuser',
                  :domain   => 'newuser.com'
                )

Output

createaact  =>  {result  => { :status  =>  boolean,  :statusmsg  =>  "" }}

status (boolean) — Status of the operation.

    1 — success.
    0 — failure.

statusmsg (string) — Status or error message.



  Reference : - http://docs.cpanel.net/twiki/bin/view/SoftwareDevelopmentKit/CreateAccount

2. Delete account
     It requires only user

  result = server.removeacct(:user => 'newuser')

Output

 removeacct  => {result  => { :status  =>  boolean,  :statusmsg  =>  "" }}

status (boolean) — Status of the operation.

    1 — success.
    0  —   failure.

statusmsg (string) — Message about the status of the operation.


Reference :-  http://docs.cpanel.net/twiki/bin/view/SoftwareDevelopmentKit/TerminateAccount