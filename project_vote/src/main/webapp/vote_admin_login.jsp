<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
  </head>
  <style>
    body {
      padding: 0;
      font-family: sans-serif;
      background-repeat: no-repeat;
      background-size: cover;
      background: linear-gradient(
        120deg,
        rgba(255, 0, 0, 0.516),
        rgb(225, 159, 35),
        rgba(255, 68, 0, 0.402),
        rgba(255, 68, 0, 0.845)
      );
      height: 100vh;
      overflow: hidden;
    }

    .center {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 29vw;
      background: white;
      box-shadow: 2px 2px 2px rgb(255, 255, 255);
      border-radius: 10px;
    }

    .center h1 {
      text-align: center;
      font-family: sans-serif;
      padding: 0 0 20px 0;
      border-bottom: 1px solid rgb(255, 0, 0);
    }

    .center form {
      padding: 0 40px;
      box-sizing: border-box;
    }

    form .txt_field {
      position: relative;
      border-bottom: 2px solid #0000008d;
      margin: 30px 0;
    }

    .txt_field input {
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
    }

    .txt_field label {
      position: absolute;
      top: 50%;
      left: 5px;
      color: #0000008d;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
    }

    .txt_field span::before {
      content: "";
      position: absolute;
      top: 40px;
      left: 0;
      width: 0px;
      height: 2px;
      background: linear-gradient(
        120deg,
        rgba(255, 208, 0, 0.516),
        orange,
        rgba(255, 68, 0, 0.402),
        orangered
      );
      transition: 0.5s;
    }

    .txt_field input:focus ~ label,
    .txt_field input:valid ~ label {
      top: -5px;
      color: orangered;
    }

    .txt_field input:focus ~ span::before,
    .txt_field input:valid ~ span::before {
      width: 100%;
    }
    input[type="Submit"] {
      width: 100%;
      height: 50px;
      border: none;
      border-radius: 25px;
      font-size: 18px;
      font-weight: 700;
      cursor: pointer;
      margin-bottom: 20px;
    }

    input[type="Submit"]:hover {
      background: linear-gradient(
        120deg,
        rgba(255, 208, 0, 0.516),
        orange,
        rgba(255, 68, 0, 0.402),
        orangered
      );
      color: #e9f4fb;
      transition: 0.5s;
    }
    .HomeAbout {
      width: 100vw;
      height: 25vh;
    }
    .back-icon {
      color: white;
      margin-left: 20px;
    }
    /* Style The Dropdown Button */
    .dropbtn {
      color: white;
      background: transparent;
      border: none;
      cursor: pointer;
    }

    /* The container <div> - needed to position the dropdown content */
    .dropdown {
      position: relative;
      display: block;
      float: right;
    }

    /* Dropdown Content (Hidden by Default) */
    .dropdown-content {
      display: none;
      right: 0;
      padding: 4px 30px;
      border-radius: 30px;
      position: absolute;
      background-color: #f9f9f99e;
      min-width: 250px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
    }

    /* Show the dropdown menu on hover */
    .dropdown:hover .dropdown-content {
      display: block;
    }
    .dropdown-content p{
        font-family: sans-serif;
    }
  </style>
  <body>
    <a class="back-icon" href="vote_home.jsp"
      ><svg
        xmlns="http://www.w3.org/2000/svg"
        width="40"
        height="40"
        fill="currentColor"
        class="bi bi-house-fill"
        viewBox="0 0 16 16"
      >
        <path
          d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"
        />
        <path
          d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293z"
        /></svg
    ></a>
    <div class="dropdown">
      <button class="dropbtn">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="40"
          height="40"
          fill="currentColor"
          class="bi bi-question-octagon-fill"
          viewBox="0 0 16 16"
        >
          <path
            d="M11.46.146A.5.5 0 0 0 11.107 0H4.893a.5.5 0 0 0-.353.146L.146 4.54A.5.5 0 0 0 0 4.893v6.214a.5.5 0 0 0 .146.353l4.394 4.394a.5.5 0 0 0 .353.146h6.214a.5.5 0 0 0 .353-.146l4.394-4.394a.5.5 0 0 0 .146-.353V4.893a.5.5 0 0 0-.146-.353zM5.496 6.033a.237.237 0 0 1-.24-.247C5.35 4.091 6.737 3.5 8.005 3.5c1.396 0 2.672.73 2.672 2.24 0 1.08-.635 1.594-1.244 2.057-.737.559-1.01.768-1.01 1.486v.105a.25.25 0 0 1-.25.25h-.81a.25.25 0 0 1-.25-.246l-.004-.217c-.038-.927.495-1.498 1.168-1.987.59-.444.965-.736.965-1.371 0-.825-.628-1.168-1.314-1.168-.803 0-1.253.478-1.342 1.134-.018.137-.128.25-.266.25h-.825zm2.325 6.443c-.584 0-1.009-.394-1.009-.927 0-.552.425-.94 1.01-.94.609 0 1.028.388 1.028.94 0 .533-.42.927-1.029.927"
          />
        </svg>
      </button>
      <div class="dropdown-content">
        <p>
          This page is only for an admin. so,if you are not admin please
          kindly go through on main page....!
        </p>
      </div>
    </div>
    <div class="container">
      <div class="center">
        <h1>ADMIN</h1>
        <form action="validate_admin.jsp" method="POST">
          <div class="txt_field">
            <input type="text" name="user_name" required />
            <span></span>
            <label>Username</label>
          </div>
          <div class="txt_field">
            <input type="password" name="user_password" required />
            <span></span>
            <label>Password</label>
          </div>
          <input name="submit" type="Submit" value="Login" />
        </form>
      </div>
    </div>
  </body>
</html>
