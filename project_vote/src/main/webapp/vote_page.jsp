<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vote Page</title>
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
        rgb(225, 159, 35)
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
  </style>
  <body>
    <div class="container">
      <div class="center">
        <h1>VOTE BALLET</h1>
        <form action="validate_vote.jsp" method="POST">
          <div class="txt_field">
            <input type="text" name="voter_id" required />
            <span></span>
            <label>Voter Registration Number</label>
          </div>
          <div class="txt_field">
            <input type="text" name="candidate_code" required />
            <span></span>
            <label>Candidate Code</label>
          </div>
          <div class="txt_field">
            <input type="text" name="election_code" required />
            <span></span>
            <label>Election Code</label>
          </div>
          <input name="submit" type="Submit" value="Vote" />
        </form>
      </div>
    </div>
  </body>
</html>
